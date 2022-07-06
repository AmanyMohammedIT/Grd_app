import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/select_storages.dart';
import 'package:sec_app/screens/start_inventory.dart';
import 'package:sec_app/widgets/tables.dart';
import 'package:sec_app/widgets/user_bars.dart';

//------------------------------------------
//جرد المخازن
class StoragesPage extends StatelessWidget {
  //-------------------------------------------------------
  static const String screenRoute = 'storages';
  const StoragesPage({Key? key}) : super(key: key);

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
                  title: 'المخازن',
                  size: 200,
                  onPressed: () {
                    Navigator.pop(context, StartInventory.screenRoute);
                  }),
              //--------Tables------------------------------------
              // TableLocationInventory(),
              Container(
                margin: EdgeInsets.all(20),
                child: Table(columnWidths: {
                  0: FixedColumnWidth(84.0),
                  1: FlexColumnWidth(2.0),
                }, children: [
                  TableRow(children: [
                    TableCell(
                      child: Container(
                        color: TbarColor,
                        // width: 10.0,
                        height: 50.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          child: Text(
                            'الرقم',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        color: TbarColor,
                        width: 20.0,
                        height: 50.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          child: Text(
                            'الاسم',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                  TableRow(
                    children: [
                      TableCell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              '25',
                              style: TextStyle(
                                  color: Colors.blue[700], fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Container(
                            // color: Colors.red,
                            alignment: Alignment.center,
                            child: TextButton(
                                child: Text(
                                  'مخزن الديوان العام',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, SelectStorages.screenRoute);
                                })),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
