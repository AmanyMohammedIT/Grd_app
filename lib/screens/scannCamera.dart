import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/select_storages.dart';
import 'package:sec_app/widgets/buttons.dart';
import 'package:sec_app/widgets/user_bars.dart';

class ScannCamera extends StatelessWidget {
  static const String screenRoute = 'scannCamera';
  const ScannCamera({Key? key, required this.scanResult}) : super(key: key);
  final String scanResult;
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
                title: 'جرد',
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text('$scanResult'),
              BoxButton(
                  color: Colors.green,
                  title: 'متابعة',
                  onPressed: () {
                    Navigator.pushNamed(context, SelectStorages.screenRoute);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
