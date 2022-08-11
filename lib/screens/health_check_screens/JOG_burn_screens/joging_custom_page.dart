import 'package:flutter/material.dart';
class Jogingpage extends StatefulWidget {
  const Jogingpage({Key? key}) : super(key: key);
  static const String id = 'joging_page';

  @override
  State<Jogingpage> createState() => _JogingpageState();
}

class _JogingpageState extends State<Jogingpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('JOGING SCHEDULE'),
          ),
          body: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: const [
              Center(
                  child: Text('JOGING SCHEDULING , with google map run distance calculation with '
                      'location access to track the distance that you have run. and '
                      'calculate the calories burned .   YET TO UPDATE'
                  )),
            ],
          ),
        ));
  }
}
