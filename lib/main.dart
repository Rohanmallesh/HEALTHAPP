import 'package:flutter/material.dart';
import 'package:healthapi/screens/health_check_screens/BMI_check_screens/bmi_custom_page.dart';
import 'package:healthapi/screens/health_check_screens/GET_hydrate_screens/hydrate_custom_page.dart';
import 'package:healthapi/screens/healthmenu.dart';
import 'widgets_n_utility/constants.dart';
import 'package:healthapi/screens/start_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Startpage.id,
      routes: {
        Startpage.id : (context) =>  Startpage(),
        Healthmenu.id: (context) =>  Healthmenu(),
        Bmipage.id: (context) =>  Bmipage(),
        Hydratepage.id: (context) => const Hydratepage(),
      },
      home: Startpage(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: scaffoldbackcolor,
      ),

    );
  }
}

