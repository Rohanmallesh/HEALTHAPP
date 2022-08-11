import 'package:flutter/material.dart';
import 'package:healthapi/screens/health_check_screens/GET_hydrate_screens/widgets_get_utilities/get_constants.dart';

class Hydratepage extends StatefulWidget {
  const Hydratepage({Key? key}) : super(key: key);
  static const String id = 'hydrate_page';

  @override
  State<Hydratepage> createState() => _HydratepageState();
}

class _HydratepageState extends State<Hydratepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: kgetappbartextstyle,
      ),
          body: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: const [
              Center(
                  child: Text('Drink water for better health'
                  )),
            ],
          ),
    ));
  }
}
