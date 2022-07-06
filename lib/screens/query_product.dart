import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/query.dart';
import 'package:sec_app/widgets/tables.dart';
import 'package:sec_app/widgets/user_bars.dart';

//الاستعلام عن الصنف
class QueryProduct extends StatelessWidget {
  //----------------------------------------------------
  static const String screenRoute = 'query_product';
  const QueryProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kdefalutepadding),
          child: Column(
            children: [
              //شريط الاستعلام
              UserBarArrow(
                  title: 'استعلام عن الصنف',
                  size: 100,
                  onPressed: () {
                    Navigator.pop(context, QueryPage.screenRoute);
                  }),
              //-----------------------------------------
              TableTry(),
            ],
          ),
        ),
      ),
    );
  }
}
