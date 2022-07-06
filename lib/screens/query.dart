import 'package:flutter/material.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/details_page.dart';
import 'package:sec_app/screens/query_locations.dart';
import 'package:sec_app/screens/query_product.dart';
import 'package:sec_app/screens/query_year.dart';
import 'package:sec_app/widgets/buttons.dart';
import 'package:sec_app/widgets/user_bars.dart';

//صفحة الاستعلام
class QueryPage extends StatefulWidget {
  //------------------------------------------------------
  static const String screenRoute = 'query';
  const QueryPage({Key? key}) : super(key: key);

  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
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
              UserBarHome(
                title: 'استعلام',
                onPressed: () {
                  Navigator.pop(context, DetailsPage.screenRoute);
                },
              ),
              SizedBox(
                height: 70,
              ),
              OvalButton(
                  color: kbutton,
                  title: 'السنة',
                  onPressed: () {
                    Navigator.pushNamed(context, QueryYear.screenRoute);
                  }),
              SizedBox(
                height: 20,
              ),
              OvalButton(
                  color: kbutton,
                  title: 'المواقع',
                  onPressed: () {
                    Navigator.pushNamed(context, QueryLocations.screenRoute);
                  }),
              SizedBox(
                height: 20,
              ),
              OvalButton(
                  color: kbutton,
                  title: 'الصنف',
                  onPressed: () {
                    Navigator.pushNamed(context, QueryProduct.screenRoute);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
