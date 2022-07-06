import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/query.dart';
import 'package:sec_app/widgets/increamentCount.dart';
import 'package:sec_app/widgets/tables.dart';
import 'package:sec_app/widgets/user_bars.dart';

//الاستعلام عن طريق السنة
class QueryYear extends StatelessWidget {
  //------------------------------------------------------
  static const String screenRoute = 'query_year';
  const QueryYear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kdefalutepadding),
          child: Column(
            children: [
              UserBarArrow(
                  title: 'استعلام',
                  size: 200,
                  onPressed: () {
                    Navigator.pop(context, QueryPage.screenRoute);
                  }),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    child: IcreamentCount(),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: 100,
                      height: 40.0,
                      color: Colors.green,
                      child: Text(
                        'عرض',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //Table********************************************************
              TableTry(),
            ],
          ),
        ),
      ),
    );
  }
}
