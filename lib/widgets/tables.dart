import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/select_locations.dart';

//هذا جدول الجرد بعد الجرد
class TableInventory extends StatelessWidget {
  const TableInventory({Key? key}) : super(key: key);
  // final String screenRoute;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Table(columnWidths: {
        0: FixedColumnWidth(100.0),
        1: FlexColumnWidth(2.0),
      }, children: [
        TableRow(children: [
          TableCell(
            child: Container(
              color: TbarColor,
              // width: 10.0,
              height: 50.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                //alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    '1154203650',
                    style: TextStyle(color: Colors.blue[700], fontSize: 15),
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
                        'لوحة مفاتيح سامسونج',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, SelectLocation.screenRoute);
                      })),
            ),
          ],
        ),
      ]),
    );
  }
}

//-----------------------------------------------------------------
//هذا جدول الجرد قبل الجرد
class TableLocationInventory extends StatelessWidget {
  const TableLocationInventory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                    style: TextStyle(color: Colors.blue[700], fontSize: 15),
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
                        'قسم الصرف مكتب 1',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, SelectLocation.screenRoute);
                      })),
            ),
          ],
        ),
        TableRow(children: [
          TableCell(
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '30',
                  style: TextStyle(color: Colors.blue[700], fontSize: 15),
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
                      'قسم المخازن مكتب 1',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, SelectLocation.screenRoute);
                    })),
          ),
        ]),
      ]),
    );
  }
}

//-----------------------------------------------------
//-----Table for Try-----------------------------------
class TableTry extends StatelessWidget {
  const TableTry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
      ]),
    );
  }
}
