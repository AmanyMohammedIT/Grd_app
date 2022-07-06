import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/details_page.dart';
import 'package:sec_app/screens/locations.dart';
import 'package:sec_app/screens/storages.dart';
import 'package:sec_app/screens/year_inventory.dart';
import 'package:sec_app/widgets/buttons.dart';

//صفحة اختيار الجرد مواقع او مخازن
class StartInventory extends StatefulWidget {
  //--------------------------------------------------------------
  static const String screenRoute = 'start_inventory';
  const StartInventory({Key? key}) : super(key: key);

  @override
  State<StartInventory> createState() => _StartInventoryState();
}

class _StartInventoryState extends State<StartInventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: kdefalutepadding),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                          leading: Icon(
                            Icons.groups,
                            color: IconColor,
                          ),
                          title: userText),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context, DetailsPage.screenRoute);
                          },
                          icon: Icon(
                            Icons.home,
                            color: Colors.black87,
                            size: 60.0,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      color: kbarColor,
                      height: 60,
                      width: 342,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              'جرد',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          OvalSmallButton(
                              color: Colors.white,
                              title: 'سنة الجرد',
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, YearInventory.screenRoute);
                              }),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              OvalButton(
                  color: kbutton,
                  title: 'المواقع',
                  onPressed: () {
                    Navigator.pushNamed(context, Locations.screenRoute);
                  }),
              SizedBox(
                height: 20,
              ),
              OvalButton(
                  color: kbutton,
                  title: 'المخازن',
                  onPressed: () {
                    Navigator.pushNamed(context, StoragesPage.screenRoute);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
