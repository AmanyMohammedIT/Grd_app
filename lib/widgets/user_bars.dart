import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:sec_app/contacts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sec_app/screens/assetd_model.dart';
import 'package:sec_app/screens/select_storages.dart';
import 'package:sec_app/widgets/increamentCount.dart';

//---------------------------------------------------------------
//شريط مع سهم الارجاع
class UserBarArrow extends StatelessWidget {
  const UserBarArrow(
      {Key? key,
      required this.title,
      required this.size,
      required this.onPressed})
      : super(key: key);
  final String title;
  final double size;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Icon(
                  Icons.groups,
                  color: IconColor,
                ),
                title: userText,
              ),
            ),
          ],
        ),
        Row(
          //  crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                color: kbarColor,
                height: 60,
                width: 342,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size,
                    ),
                    Container(
                      child: IconButton(
                          onPressed: onPressed,
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 40,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

//--------------------------------------------------------------
//شريط مع بيت للارجاع
class UserBarHome extends StatelessWidget {
  const UserBarHome({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                      onPressed: onPressed,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]);
  }
}

//-------------------------------------------------------------
//هذا الشريط حق الجرد مع الماكميرا

class BarWithCamera extends StatefulWidget {
  const BarWithCamera({
    Key? key,
  }) : super(key: key);

  @override
  State<BarWithCamera> createState() => _BarWithCameraState();
}

class _BarWithCameraState extends State<BarWithCamera> {
  @override
  String? _scanResult;
   List<AssetsModel> assets = [];
  int total = 0;
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: <Widget>[
              Expanded(
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
        ),
      ],
    );
  }

  Future scanBarcode() async {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    String _scanResult;
    try {
      _scanResult = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.BARCODE);

      Alert(
        context: context,
         content: Container(
          height: 400,
          width: 450,
          child:Column(
          
          children: [
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
          SizedBox(height: 30,),
         Row(children: [ Expanded(
            //flex: 2,
            child: Container(
              width: 20,
              height: 60,
              child: InventoryCounter(),
            ),
          ),],),
        ]),
        ),
        buttons: [
          DialogButton(
            child: Text(
              "متابعة",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            color: Colors.green,
            onPressed: () => Navigator.pushNamed(context,SelectStorages.screenRoute),
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
     // this.total += 1;
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

class AlertInventory extends StatefulWidget {
  const AlertInventory({ Key? key }) : super(key: key);

  @override
  State<AlertInventory> createState() => _AlertInventoryState();
}

class _AlertInventoryState extends State<AlertInventory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}