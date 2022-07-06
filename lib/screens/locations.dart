import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/start_inventory.dart';
import 'package:sec_app/widgets/tables.dart';
import 'package:sec_app/widgets/user_bars.dart';

//---------------------------------------------------
//جرد المواقع
class Locations extends StatelessWidget {
  //-----------------------------------------------------
  static const String screenRoute = 'locations';
  const Locations({Key? key}) : super(key: key);

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
                  title: 'مواقع',
                  size: 200,
                  onPressed: () {
                    Navigator.pop(context, StartInventory.screenRoute);
                  }),
              //جدول المواقع
              TableLocationInventory(),
            ],
          ),
        ),
      ),
    );
  }
}
