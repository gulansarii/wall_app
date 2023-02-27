import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_0/Home.dart';
import 'package:flutter_application_0/Login.dart';
import 'package:flutter_application_0/constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isDark = false;
  // var youName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isDark == true ? Colors.black : Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 80,
                  child: Text(
                    'Logo',
                    // youName.toString() == '' ? 'Enter Name' : youName,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 252, 150, 33)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // isDark = !isDark;
                    // if (isDark == true) {
                    //   isDark = false;
                    // } else {
                    //   isDark = true;
                    // }

                    setState(() {});
                  },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    height: 80,
                    child: Icon(
                      isDark ? Icons.light_mode : Icons.dark_mode,
                      color: AppColors().appthemeColorDark,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 290,
              child: Image.asset(
                'assets/images/group_img.png',
                width: 328,
                height: 328,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: 100,
              child: Text(
                'find your',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: isDark
                        ? Colors.white
                        : Color.fromARGB(240, 120, 124, 134)),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              child: Text(
                'better half',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 172, 29, 29)),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 156, 14, 14),
                    borderRadius: BorderRadius.circular(30)),
                // color: Colors.amber,
                height: 50,

                child: Text(
                  'Continue with Email',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff89022E),
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: const Text(
                  'Continue with mobile number',
                  style: TextStyle(
                      color: Color.fromARGB(255, 129, 8, 8),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 16,
              child: Text(
                'By logging in, you agree to our Terms & Privacy policy',
                style: TextStyle(
                    color: isDark
                        ? Colors.white
                        : Color.fromARGB(255, 10, 10, 10)),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 100,
                child: Text(
                  'Skip login',
                  style: TextStyle(color: Color.fromARGB(255, 56, 56, 56)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
























  // body: SafeArea(
  //           child: Center(
  //     child: Container(
  //       child: Image.asset(
  //         'assets/images/group_img.png',
  //         width: 328,
  //         height: 328,
  //       ),
  //     ),
  //   ))