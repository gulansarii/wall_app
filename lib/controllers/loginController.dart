import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginController extends GetxController {
  bool isDark = false;
  RxString number = ''.obs;
  TextEditingController numberText = TextEditingController();

  void sendOtp() async {
    var headers = {'securitykey': 'e10adc3949ba59abbe56e057f20f883e'};
    var request = http.MultipartRequest(
        'POST', Uri.parse('http://3.6.144.86/matrimony/public/api/send-otp'));
    request.fields.addAll({'email': numberText.text.toString()});

    request.headers.addAll(headers);

    http.StreamedResponse streamresponse = await request.send();
    var response = await http.Response.fromStream(streamresponse);
    var body = jsonDecode(response.body);
    if (body['status'] == true) {
      Fluttertoast.showToast(msg: body['message']);
      Get.toNamed('/loginOtp');
    } else {
      Fluttertoast.showToast(msg: body['error_msg']);
    }
  }

  void googleLogin() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        // do something with the user credential
      }
    } catch (e) {
      // handle sign-in errors
    }
  }
}

class _googleSignIn {
  _googleSignIn.signOut();

  static signIn() {}
}
