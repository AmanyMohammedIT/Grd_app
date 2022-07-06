import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sec_app/contacts.dart';
import 'package:sec_app/screens/query.dart';
import 'package:sec_app/screens/start_inventory.dart';
import 'package:sec_app/widgets/buttons.dart';

//صفحة التفاصيل عند تسجيل الدخول
class DetailsPage extends StatefulWidget {
  //-------------------------------------------------------
  static const String screenRoute = 'details_page';
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 50,
              ),
              child: Column(
                children: [
                  Container(
                    //  margin: EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.groups,
                        color: IconColor,
                      ),
                      title: userText,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    child: Divider(
                      color: kbarColor,
                      thickness: 3,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  OvalButton(
                      color: kbutton,
                      title: 'البدأ بالجرد',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, StartInventory.screenRoute);
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  OvalButton(
                      color: kbutton,
                      title: 'الاستعلام',
                      onPressed: () {
                        Navigator.pushNamed(context, QueryPage.screenRoute);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
