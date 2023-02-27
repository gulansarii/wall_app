import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_0/Home.dart';

class LoginOtp extends StatefulWidget {
  const LoginOtp({super.key});

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 255, 255, 255),
        elevation: 0,
        leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios,
                color: Color.fromARGB(255, 24, 24, 24))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              height: 60,
              width: 400,
              child: Text(
                'Verify mobile number',
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
              alignment: AlignmentDirectional.bottomStart,
              height: 40,
              width: 400,
              child: Text(
                'We sent an SMS with a 4 - digit code to',
                style: TextStyle(
                  color: Color.fromARGB(248, 59, 59, 59),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  wordSpacing: 0.7,
                  letterSpacing: 1,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: Text(
                '9898787678',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
                child: TextFormField(),
                color: Colors.blueGrey,
                height: 100,
                width: MediaQuery.of(context).size.width),
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Resend OTP',
                style: TextStyle(
                  color: Color.fromARGB(255, 156, 15, 15),
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 156, 15, 15)),
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 252, 247, 247)),
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
