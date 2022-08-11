import 'package:flutter/material.dart';
import 'package:healthapi/screens/health_check_screens/FIT_routine_screens/fitroutine_custom_page.dart';
import 'package:healthapi/screens/health_check_screens/GET_hydrate_screens/hydrate_custom_page.dart';
import 'package:healthapi/screens/health_check_screens/BMI_check_screens/bmi_custom_page.dart';
import 'health_check_screens/JOG_burn_screens/joging_custom_page.dart';


class Healthmenu extends StatefulWidget {
  //const Healthmenu({super.key});
  static const String id = 'health_menu';
  @override
  State<Healthmenu> createState() => _HealthmenuState();
}

class _HealthmenuState extends State<Healthmenu> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'HEALTH MENU',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 20,
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  minWidth: 200.0,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bmipage()));
                    });
                  },
                  height: 42.0,
                  child: const Text(
                    'BMI CHECK',
                    style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 20,
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  minWidth: 200.0,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Hydratepage()));
                    });
                  },
                  height: 42.0,
                  child: const Text(
                    'GET HYDRATE',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 20,
                color: Colors.purple,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  minWidth: 200.0,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Jogingpage()));
                    });
                  },
                  height: 42.0,
                  child: const Text(
                    'JOG BURN',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 20,
                color: Colors.green,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  minWidth: 200.0,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Fitnesspage()));
                    });
                  },
                  height: 42.0,
                  child: const Text(
                    'FIT ROUTINE',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// Padding(
// padding: const EdgeInsets.symmetric(vertical: 16.0),
// child: Material(
// elevation: 20,
// color: Colors.pink,
// borderRadius: BorderRadius.circular(30.0),
// child: MaterialButton(
// minWidth: 200.0,
// onPressed: () {
// setState((){
// Navigator.push(context, MaterialPageRoute(builder: (context) =>const  Healthmenu()));
// });
// },
// height: 42.0,
// child: const Text(
// 'BMI CHECK',
// style: TextStyle(
// color: Colors.white,
// fontSize: 20
// ),
// ),
// ),
// ),
// ),
