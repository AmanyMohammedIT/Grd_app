import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sec_app/screens/details_page.dart';
import 'package:sec_app/screens/locations.dart';
import 'package:sec_app/screens/login_page.dart';
import 'package:sec_app/screens/query.dart';
import 'package:sec_app/screens/query_locations.dart';
import 'package:sec_app/screens/query_product.dart';
import 'package:sec_app/screens/query_year.dart';
import 'package:sec_app/screens/select_locations.dart';
import 'package:sec_app/screens/select_storages.dart';
import 'package:sec_app/screens/start_inventory.dart';
import 'package:sec_app/screens/start_page.dart';
import 'package:sec_app/screens/storages.dart';
import 'package:sec_app/screens/year_inventory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gerd page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // // Arabic RTL
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),

      //home: LoginScreen(),
      initialRoute: StartPage.screenRoute,
      routes: {
        DetailsPage.screenRoute: (context) => DetailsPage(),
        Locations.screenRoute: (context) => Locations(),
        LoginPage.screenRoute: (context) => LoginPage(),
        QueryLocations.screenRoute: (context) => QueryLocations(),
        QueryProduct.screenRoute: (context) => QueryProduct(),
        QueryYear.screenRoute: (context) => QueryYear(),
        QueryPage.screenRoute: (context) => QueryPage(),
        SelectLocation.screenRoute: (context) => SelectLocation(),
        SelectStorages.screenRoute: (context) => SelectStorages(),
        StartInventory.screenRoute: (context) => StartInventory(),
        StartPage.screenRoute: (context) => StartPage(),
        StoragesPage.screenRoute: (context) => StoragesPage(),
        YearInventory.screenRoute: (context) => YearInventory(),
      },
    );
  }
}
