import 'package:flutter/material.dart';

//لتحديد زيادة العام للجرد او الاستعلام
class IcreamentCount extends StatelessWidget {
  const IcreamentCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(children: [YearCount()]),
    );
  }
}

class YearCount extends StatefulWidget {
  const YearCount({Key? key}) : super(key: key);

  @override
  State<YearCount> createState() => _YearCountState();
}

class _YearCountState extends State<YearCount> {
  //لتحديد بداية العام الافتراضي
  int _itemCount = 1990;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      trailing: _buildTrailingWidget(),
    );
  }

  Widget _buildTrailingWidget() {
    return FittedBox(
      child: Row(
        children: [
          IconButton(
            iconSize: 40,
            onPressed: () =>
                setState(() => _itemCount != 1990 ? _itemCount-- : _itemCount),
            icon: Icon(Icons.remove),
          ),
          Text(_itemCount.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          IconButton(
              iconSize: 40,
              onPressed: () => setState(() => _itemCount++),
              icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
/////////////////////////////////////////////////////////////

class InventoryCounter extends StatefulWidget {
  const InventoryCounter({ Key? key }) : super(key: key);

  @override
  State<InventoryCounter> createState() => _InventoryCounterState();
}

class _InventoryCounterState extends State<InventoryCounter> {
    int _itemCount = 1;
  Widget counter(){
return  Row(
  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
          iconSize: 30,
            onPressed: () =>
                setState(() => _itemCount != 1 ? _itemCount-- : _itemCount),
            icon: Icon(Icons.remove),
          ),
          Text(_itemCount.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          IconButton(
              iconSize: 30,
              onPressed: () => setState(() => _itemCount++),
              icon: Icon(Icons.add))
        ],
     
    );
    }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView(
        children: [counter()]
        ),
    );
  }
}
