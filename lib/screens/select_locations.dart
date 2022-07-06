
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/assetd_model.dart';
import 'package:sec_app/screens/details_page.dart';
import 'package:sec_app/screens/locations.dart';
import 'package:sec_app/screens/start_inventory.dart';
import 'package:sec_app/widgets/buttons.dart';
import 'package:sec_app/widgets/user_bars.dart';

//------------------------------------------
//اختيار قائمة للجرد

class SelectLocation extends StatelessWidget {
  static const String screenRoute = 'select_locations';
  const SelectLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CameraSelectLocation();
  }
}

class CameraSelectLocation extends StatefulWidget {
  const CameraSelectLocation({Key? key}) : super(key: key);

  @override
  State<CameraSelectLocation> createState() => _CameraSelectLocationState();
}

class _CameraSelectLocationState extends State<CameraSelectLocation> {
  String? _scanResult;
  List<AssetsModel> assets = [];
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
                  title: 'قسم الصرف مكتب 1',
                  size: 90,
                  onPressed: () {
                    Navigator.pop(context, Locations.screenRoute);
                  }),
              SizedBox(
                height: 5,
              ),
              //شريط الكاميرا مع مربع لكتابة رقم الصنف
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

              Expanded(
                child: ListView.builder(
                    itemCount: assets.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
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
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BoxButton(
                        color: kbutton,
                        title: 'ترحيل',
                        onPressed: () {
                          Navigator.pushNamed(
                              context, Locations.screenRoute);
                        }),
                    SizedBox(
                      width: 30,
                    ),
                    BoxButton(
                        color: kbutton,
                        title: 'عرض التقرير',
                        onPressed: () { }),
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
