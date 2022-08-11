
import 'package:flutter/material.dart';
import 'package:healthapi/screens/health_check_screens/BMI_check_screens/widgets_bmi_utilities/bmi_constants.dart';
// import 'package:healthapi/screens/health_check_screens/BMI_check_screens/widgets_bmi_utilities//reusable_card.dart';

class Bmi_res_page extends StatefulWidget {
  const Bmi_res_page({required this.bmiresult, required this.Textresult, required this.Resulttext}) ;
  static const String id = 'bmi_result';
  final String bmiresult;
  final String Textresult;
  final String Resulttext;
  @override
  State<Bmi_res_page> createState() => _Bmi_res_pageState();
}

class _Bmi_res_pageState extends State<Bmi_res_page> {
  String get bmiresults => '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.2,
        title: kappbartextstyle,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print('this is it');
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                          bmiresults,
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print('this is it');
                    },
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                            'this is card'
                        ),
                      ),
                    ),
                  )),
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              print('this is it');
                            },
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text(
                                    'this is card'
                                ),
                              ),
                            ),
                          )),
                      Expanded(
                          child: Column(
                            children: [
                              Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      print('this is it');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.purple[700],
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                        child: Text(
                                          'JOGING',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      print('this is it');
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.blue[600],
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                        child: Text(
                                          'HYDRATION',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),Expanded(
                                  child: GestureDetector(
                                    onTap: (){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> ))
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          color: Colors.green[600],
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Center(
                                        child: Text(
                                          'DAILY DIET',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ))
                    ],
                  )),
              GestureDetector(
                onTap: (){
                  print('bmi calculation result button');
                  Navigator.pop(context);
                },
                child: Container(
                  height: 60,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      'RE-CALCULATE',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}











































































// import 'package:flutter/material.dart';
//
// class Reusablecard extends StatelessWidget {
//   const Reusablecard(this.onpress, this.cardchild , this.colour);
//
//   final Widget cardchild;
//   final Function onpress;
//   final Color colour;
//
//   // const Reusablecard();
//
// //
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onpress(),
//       child: Container(
//         margin: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//             color: colour,
//             borderRadius: BorderRadius.circular(10)
//
//         ),
//         child: cardchild,
//         ),
//
//     );
//   }
// }
