import 'package:flutter/material.dart';
class Fitnesspage extends StatefulWidget {
  const Fitnesspage({Key? key}) : super(key: key);
  static const String id = 'joging_page';

  @override
  State<Fitnesspage> createState() => _FitnesspageState();
}

class _FitnesspageState extends State<Fitnesspage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('FITNESS ROUTINE'),
          ),
          body: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: const [
              Center(
                  child: Text('FITNESS ROUTINE , with daily intake and '
                      'diet mantainance schedule to keep up your health better.   YET TO UPDATE'
                  )),
            ],
          ),
        ));
  }
}
