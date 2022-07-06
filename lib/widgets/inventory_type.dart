import 'package:flutter/material.dart';
import 'package:sec_app/widgets/increamentCount.dart';

//اختيار نوع الجرد سنوي او مفاجئ
class TypGrd extends StatefulWidget {
  const TypGrd({Key? key}) : super(key: key);

  @override
  State<TypGrd> createState() => _TypGrdState();
}

//كلاس لتحديد حالة نوع الجرد لجعل الجرد من قروب واحد
class _TypGrdState extends State<TypGrd> {
  int selectedRadio = 1;
  // @override
  // void iniState() {
  //   super.initState();
  //   selectedRadio = 0;
  // }

  setSelectedRadio(val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: [
          RadioListTile(
              title: Text(
                'جرد سنوي',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: 1,
              groupValue: selectedRadio,
              activeColor: Colors.green,
              onChanged: (val) {
                setSelectedRadio(val);
              }),
          Container(
            width: 200,
            height: 40,
            child: IcreamentCount(),
          ),
          RadioListTile(
              title: Text(
                'جرد مفاجئ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              value: 2,
              groupValue: selectedRadio,
              activeColor: Colors.green,
              onChanged: (val) {
                setSelectedRadio(val);
              })
        ],
      ),
    );
  }
}
