import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/assetd_model.dart';
import 'package:sec_app/screens/details_page.dart';
import 'package:sec_app/screens/storages.dart';
import 'package:sec_app/widgets/buttons.dart';
import 'package:sec_app/widgets/increamentCount.dart';
import 'package:sec_app/widgets/user_bars.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

//---------------------------------
//اختيار قائمة لجرد المخازن

class SelectStorages extends StatelessWidget {
  //---------------------------------------------------------------
  static const String screenRoute = 'select_storages';
  const SelectStorages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CameraSelectionStorage();
  }
}

class CameraSelectionStorage extends StatefulWidget {
  const CameraSelectionStorage({Key? key}) : super(key: key);

  @override
  State<CameraSelectionStorage> createState() => _CameraSelectionStorageState();
}

class _CameraSelectionStorageState extends State<CameraSelectionStorage> {
  List<AssetsModel> assets = [];
  String? _scanResult;
  //int total = 0;
 
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
                  title: 'مخزن الديوان العام',
                  size: 90,
                  onPressed: () {
                    Navigator.pop(context, StoragesPage.screenRoute);
                  }),
              SizedBox(
                height: 5,
              ),
              //شريط مع كاميرا ومربع لاضافة رقم الصنف
              Row(
                children: <Widget>[
                  Expanded(
                    child: SingleChildScrollView(
                      child: TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: 'رقم الصنف',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Expanded(
                      child: ElevatedButton.icon(
                        // icon: Icon(Icons.camera_alt_outlined),
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                          size: 50,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.white,
                        ),
                        label: Text(
                          '',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        onPressed: scanBarcode,
                      ),
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Expanded(
      child: ListView.builder(
          itemCount: assets.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                 assets[index].number ?? '',
                style: TextStyle(
                  color: Colors.blue[700],
                  fontSize: 18,
                ),
              ),
            );
          }),
    ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BoxButton(
                        color: kbutton,
                        title: 'ترحيل',
                        onPressed: () {
                          Navigator.pushNamed(context, StoragesPage.screenRoute);
                        }),
                    SizedBox(
                      width: 30,
                    ),
                    BoxButton(
                        color: kbutton,
                        title: 'عرض التقرير',
                        onPressed: () {
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future scanBarcode() async {
    String _scanResult;
    try {
      _scanResult = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.BARCODE);
      Alert(
        context: context,
        content: Container(
          height: 400,
          width: 450,
          child: Column(children: [
            ListTile(
              leading: Icon(
                Icons.groups,
                color: IconColor,
              ),
              title: userText,
            ),
            Container(
              color: kbarColor,
              height: 40,
              width: 342,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'جرد',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              _scanResult,
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  //flex: 2,
                  child: Container(
                    width: 20,
                    height: 60,
                    child: InventoryCounter(),
                  ),
                ),
              ],
            ),
          ]),
        ),
        buttons: [
          DialogButton(
            child: Text(
              "متابعة",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, SelectStorages.screenRoute);
            },
            width: 120,
          )
        ],
      ).show();
    } on PlatformException {
      _scanResult = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      this._scanResult = _scanResult;
      assets.add(AssetsModel(number: _scanResult));
    });
  }

  void callforLoop(String looptry) {
    int i = 0;

    while (i == looptry) {
      print('While Loop Called $i Times');
      i++;
    }
  }
}
