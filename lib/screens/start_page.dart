import 'package:flutter/material.dart';
import 'healthmenu.dart';
//import 'package:healthapi/widgets_n_utility/round_button.dart';

class Startpage extends StatefulWidget {
  //const Startpage({Key? key}) : super(key: key);
  static const String id = 'start_page';
  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'HEALTHAPI',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.cyanAccent),
              ),
              const Text(
                'wish you health',
                style: TextStyle(fontSize: 10, color: Colors.cyan),
              ),
              const Text(
                'HEALTH is WEALTH',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    color: Colors.cyan),
              ),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 20,
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    minWidth: 200.0,
                    onPressed: (){
                        Navigator.pushNamed(context, Healthmenu.id );
                    },
                    height: 42.0,
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
