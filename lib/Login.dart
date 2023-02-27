import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_0/LoginOtp.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 253, 236, 236),
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        backgroundColor: Color.fromARGB(255, 253, 236, 236),
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
              Container(
                alignment: Alignment.topLeft,
                height: 40,
                width: 400,
                child: Text(
                  'Matrimony!',
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
              TextFormField(
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginOtp()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 156, 14, 14),
                      borderRadius: BorderRadius.circular(30)),
                  // color: Colors.amber,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 16,
                child: Text(
                  'Not a member ? Sign up',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              )
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