import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_0/Home.dart';
import 'package:flutter_application_0/LoginOtp.dart';
import 'package:flutter_application_0/controllers/loginController.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final logincontroller = Get.put(LoginController());
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
          child: Column(
            children: [
              // AppBar(
              //   elevation: 0,
              //   leading: GestureDetector(
              //       child: Icon(
              //     Icons.arrow_back_ios,
              //     color: Color.fromARGB(255, 24, 24, 24),
              //   )),
              //   backgroundColor: Color.fromARGB(255, 253, 236, 236),
              // ),
              // Container(
              //   height: 70,
              //   width: 400,
              //   color: Colors.blueGrey,
              // ),
              SizedBox(
                height: 9,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                height: 60,
                width: 400,
                child: Text(
                  'Welcome back to',
                  style: TextStyle(
                      color: Color.fromARGB(255, 34, 46, 51),
                      wordSpacing: 1,
                      letterSpacing: 1,
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                width: 400,
                child: Text(
                  'PEXELS !',
                  style: TextStyle(
                      color: Color.fromARGB(255, 36, 44, 51),
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      wordSpacing: 1,
                      letterSpacing: 1),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                height: 60,
                width: 400,
                child: Text(
                  'Please enter your required details to LogIn',
                  style: TextStyle(
                    color: Color.fromARGB(248, 59, 59, 59),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    wordSpacing: 0.7,
                    letterSpacing: 1,
                  ),
                ),
              ),
              SingleChildScrollView(),
              TextFormField(
                // keyboardType: TextInputType.emailAddress,
                controller: logincontroller.numberText,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* Required";
                  } else if (value.length < 10) {
                    return "Mobile number should be atleast 10 digits";
                  } else if (value.length > 10) {
                    return "Password should not be greater than 10 digits";
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    counterText: '',
                    hintText: 'Enter Your Email ID / Mobile Number',
                    labelText: 'Email ID / Mobile Number',
                    filled: true,
                    border: OutlineInputBorder(
                      // borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  logincontroller.numberText.text.isEmpty
                      ? Fluttertoast.showToast(msg: 'Please enter your number')
                      : logincontroller.sendOtp();
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 165, 49, 49),
                      borderRadius: BorderRadius.circular(30)),
                  // color: Colors.amber,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Send OTP',
                    // 'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 19,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        // color: Color.fromARGB(255, 122, 122, 122),
                        borderRadius: BorderRadius.circular(30)),
                    // color: Colors.amber,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon.png'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            child: Text(
                              'Continue with google',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 16,
                    child: Text(
                      'Not a member ? ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    height: 16,
                    child: Text(
                      'sign up',
                      style: TextStyle(
                          color: Color.fromARGB(255, 20, 20, 20),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//  validator: (value) {
//                         if (value!.isEmpty) {
//                           return "* Required";
//                         } else if (value.length < 6) {
//                           return "Password should be atleast 6 characters";
//                         } else if (value.length > 15) {
//                           return "Password should not be greater than 15 characters";
//                         } else
//                           return null;
//                       },
//                       obscureText: true,