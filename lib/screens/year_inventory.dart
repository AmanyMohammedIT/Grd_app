import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/start_inventory.dart';
import 'package:sec_app/widgets/buttons.dart';
import 'package:sec_app/widgets/inventory_type.dart';
import 'package:sec_app/widgets/user_bars.dart';

//صفحة اختيار نوع الجرد والعام
class YearInventory extends StatefulWidget {
  //---------------------------------------------------------------
  static const String screenRoute = 'year_inventory';
  const YearInventory({Key? key}) : super(key: key);

  @override
  State<YearInventory> createState() => _YearInventoryState();
}

class _YearInventoryState extends State<YearInventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kdefalutepadding),
          child: Column(
            children: [
              UserBarHome(
                title: 'سنة الجرد',
                onPressed: () {
                  Navigator.pop(context, StartInventory.screenRoute);
                },
              ),
              //لتحديد نوع الجرد
              TypGrd(),
              //---------------------------------------
              SizedBox(
                height: 40.0,
              ),
              BoxButton(
                  color: kbutton,
                  title: 'موافق',
                  onPressed: () {
                    Navigator.pushNamed(context, StartInventory.screenRoute);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
