import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({required this.title, required this.colour, required this.onPressed});

  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.symmetric(vertical: 16.0),
    //   child: Material(
    //     elevation: 20,
    //     color: colour,
    //     borderRadius: BorderRadius.circular(30.0),
    //     child: MaterialButton(
    //       minWidth: 200.0,
    //       onPressed: onPressed(),
    //       height: 42.0,
    //       child: Text(
    //         title,
    //         style: const TextStyle(
    //           color: Colors.white,
    //           fontSize: 20
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return TextButton(
       onPressed: onPressed(),
    // () {
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => Healthmenu()));
      // },
      child: Container(
        //padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 40,
        width: 200,
        child: Center(
          child: Text(
            title ,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}