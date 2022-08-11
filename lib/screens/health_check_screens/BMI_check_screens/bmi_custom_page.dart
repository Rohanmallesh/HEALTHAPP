import 'package:flutter/material.dart';
import 'package:healthapi/screens/health_check_screens/BMI_check_screens/widgets_bmi_utilities/bmi_constants.dart';
import 'bmi_result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculation_part.dart';

enum Gender{
  male,
  female,
  not
}
class Bmipage extends StatefulWidget {
  //const Bmipage({ super.key}) ;
  static const String id = 'bmi_custom';
  @override
  State<Bmipage> createState() => _BmipageState();
}

class _BmipageState extends State<Bmipage> {
  Gender selectedgender=Gender.not;
  int height = 180;
  int weight = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.2,
        title: Text(
          'BMI CALCULATOR',
          style:
          TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.amber,),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Expanded(
                   child: Row(
                     children:  [
                       Expanded(
                           child: GestureDetector(
                         onTap: (){
                           setState((){
                             selectedgender = Gender.male;
                           });
                         },
                         child: Container(
                           margin: EdgeInsets.all(10.0),
                           decoration: BoxDecoration(
                             color: Colors.grey[800],
                             borderRadius: BorderRadius.circular(10)
                           ),
                           child:  Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:  [
                               Center(
                                 child: Icon(
                                   FontAwesomeIcons.mars,
                                   size: 50,
                                   color: selectedgender==Gender.male ? Colors.cyan : Colors.white,
                                 ),
                               ),
                               Center(
                                 child: Text(
                                     'MALE',
                                   style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.w500,
                                     color: selectedgender==Gender.male ? Colors.cyan : Colors.white,
                                   ),
                                 ),
                               )
                             ],
                           )

                         ),
                       )),
                       Expanded(
                           child: GestureDetector(
                             onTap: (){
                               setState((){
                                 selectedgender = Gender.female;
                               });
                             },
                             child: Container(
                               margin: EdgeInsets.all(10.0),
                               decoration: BoxDecoration(
                                   color: Colors.grey[800],
                                   borderRadius: BorderRadius.circular(10)
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Center(
                                     child: Icon(
                                       FontAwesomeIcons.venus,
                                       size: 50,
                                       color: selectedgender==Gender.female ? Colors.pink : Colors.white,
                                     ),
                                   ),
                                   Center(
                                     child: Text(
                                       'FEMALE',
                                       style: TextStyle(
                                           fontSize: 20,
                                           fontWeight: FontWeight.w500,
                                           color: selectedgender==Gender.female ? Colors.pink : Colors.white
                                       ),
                                     ),
                                   )
                                 ],
                               )
                             ),
                           )),

                       ],
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('HEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.white
                            ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                height.toString(),
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w600,
                                    color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.white
                                  ),
                                ),
                                Text(
                                  'cm',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.white
                                  ),
                                ),
                              ],
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: selectedgender==Gender.male ? Colors.cyan[900] : selectedgender==Gender.female ? Colors.pink[900] : Colors.amber[900],
                                  activeTrackColor: selectedgender==Gender.male ? Colors.cyan[400] : selectedgender==Gender.female ? Colors.pink[400] : Colors.amber[300],
                                  thumbColor: selectedgender==Gender.male ? Colors.cyanAccent : selectedgender==Gender.female ? Colors.pinkAccent : Colors.orange,
                                  overlayColor: selectedgender==Gender.male ? Colors.blueGrey : selectedgender==Gender.female ? Colors.pinkAccent[50] : Colors.black12,
                                  thumbShape:
                                  const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                  overlayShape:
                                  const RoundSliderOverlayShape(overlayRadius: 30.0),

                                ),
                                child: Slider(value: height.toDouble(),
                                  min: 90,
                                  max: 270,
                                  onChanged: (newvalue) {
                                  setState((){
                                    height = newvalue.round() ;
                                  });
                                  },

                                ))
                          ],
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.white
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w600,
                                    color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.white
                                  ),
                                ),
                                Text(
                                  'kg',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.white
                                  ),
                                ),
                              ],
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  inactiveTrackColor: selectedgender==Gender.male ? Colors.cyan[900] : selectedgender==Gender.female ? Colors.pink[900] : Colors.amber[900],
                                  activeTrackColor: selectedgender==Gender.male ? Colors.cyan[400] : selectedgender==Gender.female ? Colors.pink[400] : Colors.amber[300],
                                  thumbColor: selectedgender==Gender.male ? Colors.cyanAccent : selectedgender==Gender.female ? Colors.pinkAccent : Colors.orange,
                                  overlayColor: selectedgender==Gender.male ? Colors.blueGrey : selectedgender==Gender.female ? Colors.pinkAccent[50] : Colors.black12,
                                  thumbShape:
                                  const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                  overlayShape:
                                  const RoundSliderOverlayShape(overlayRadius: 30.0),

                                ),
                                child: Slider(value: weight.toDouble(),
                                  min: 30,
                                  max: 150,
                                  onChanged: (new2value) {
                                    setState((){
                                      weight = new2value.round() ;
                                    });
                                  },

                                ))
                          ],
                        ),
                      ),
                    ),
                  )),

               GestureDetector(
                    onTap: (){
                      Calculator calc = Calculator(height: height, weight: weight);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bmi_res_1(
                                Gender1: selectedgender,
                                bmiresult: calc.calculateBMI(),
                                Resulttext: calc.getResult(),
                                Textresult: calc.getstringresult()
                              )));
                    },
                    child: Container(
                      height: 65,
                      color: selectedgender==Gender.male ? Colors.cyan : selectedgender==Gender.female ? Colors.pink : Colors.amber,
                      child:  Center(
                        child: Text(
                          'CALCULATE',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                            color: selectedgender==Gender.male ? Colors.white : selectedgender==Gender.female ? Colors.white : Colors.black
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




















// Expanded(
// child: Reusablecard(),
// ),
// Expanded(
// child: Reusablecard(),
// ),
// Expanded(
// child: Row(
// children: [
// Expanded(
// child: Reusablecard(),
// ),
// Expanded(
// child: Column(
// children:  [
// Expanded(
// child: Reusablecard(),
// ),
// Expanded(
// child: Reusablecard(),
// ),
// Expanded(
// child: Reusablecard(),
// ),
// ],
// ),
// ),
// ],
// ))
// Row(
//   children: [
//     Expanded(
//       child: Reusablecard(),
//     ),
//     Column(
//       children: [
//         Expanded(
//           child: Reusablecard(),
//         ),
//         Expanded(
//           child: Reusablecard(),
//         ),
//         Expanded(
//           child: Reusablecard(),
//         ),
//       ],
//     )
//   ],
// ),








