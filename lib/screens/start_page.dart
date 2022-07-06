import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/login_page.dart';
import 'package:sec_app/widgets/buttons.dart';

//صفحة البداية مع الشعار
class StartPage extends StatefulWidget {
  //------------------------------------------------------
  static const String screenRoute = 'start_page';
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  //هذا ع شان شاشة البداية تبدأ بوقت 3 ثواني وتنتقل للصفحة الثانية
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), navigateToSecondPage);
  }

  void navigateToSecondPage() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                // Container(
                //   height: 180,
                //   child: Image.asset('images/flat.png'),
                // ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 100,
                  child: Image.asset('images/flat.png'),
                ),
                SizedBox(
                  height: 20.0,
                ),

                CircularProgressIndicator(
                  backgroundColor: Colors.green[300],
                  strokeWidth: 5,
                ),
                Text(
                  'تطبيق جرد',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),

            // OvalButton(
            //     color: kbutton,
            //     title: 'ابدأ',
            //     onPressed: () {
            //       Navigator.pushNamed(context, LoginPage.screenRoute);
            //     }),
          ],
        ),
      ),
    );
  }
}
