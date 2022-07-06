import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/details_page.dart';
import 'package:sec_app/widgets/buttons.dart';

//صفحة تسجيل الدخول
class LoginPage extends StatefulWidget {
  //------------------------------------------------------------------
  static const String screenRoute = 'login_page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget userName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          textAlign: TextAlign.center,
          onChanged: (value) {},
          decoration: InputDecoration(
            hintText: 'اسم المستخدم',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 24,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: IconColor,
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            prefixIcon: Icon(
              Icons.groups,
              color: IconColor,
            ),
          ),
        ),
      ],
    );
  }

  Widget Password() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
          textAlign: TextAlign.center,
          onChanged: (value) {},
          decoration: InputDecoration(
            hintText: 'كلمة المرور',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 24,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: BorderColor,
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: IconColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          userName(),
                          SizedBox(
                            height: 30.0,
                          ),
                          Password(),
                          SizedBox(
                            height: 40.0,
                          ),
                          OvalButton(
                              color: kbutton,
                              title: 'تسجيل الدخول',
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, DetailsPage.screenRoute);
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
