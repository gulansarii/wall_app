import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_0/Home.dart';
import 'package:flutter_application_0/controllers/loginController.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class OtpController extends GetxController {
  TextEditingController otpText = TextEditingController();

  void verifyOtp() async {
    var headers = {'securitykey': 'e10adc3949ba59abbe56e057f20f883e'};
    var request = http.MultipartRequest(
        'POST', Uri.parse('http://3.6.144.86/matrimony/public/api/login'));
    request.fields.addAll({
      'email': Get.find<LoginController>().numberText.text.toString(),
      'otp': otpText.text.toString()
    });

    request.headers.addAll(headers);

    http.StreamedResponse stremresponse = await request.send();
    var response = await http.Response.fromStream(stremresponse);
    var body = jsonDecode(response.body);
    print(body);
    print(request.fields);
    if (body['status'] == true) {
      Fluttertoast.showToast(msg: body['message']);
      Get.to(() => HomePage());
    } else {
      Fluttertoast.showToast(msg: body['error_msg']);
    }
  }
}
