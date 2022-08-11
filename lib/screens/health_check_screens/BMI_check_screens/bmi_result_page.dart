import 'package:flutter/material.dart';
import 'package:healthapi/screens/health_check_screens/BMI_check_screens/bmi_custom_page.dart';
// import 'package:healthapi/screens/health_check_screens/BMI_check_screens/widgets_bmi_utilities/bmi_constants.dart';
import 'package:healthapi/screens/health_check_screens/GET_hydrate_screens/hydrate_custom_page.dart';

import '../FIT_routine_screens/fitroutine_custom_page.dart';
import '../JOG_burn_screens/joging_custom_page.dart';



class Bmi_res_1 extends StatelessWidget {
  const Bmi_res_1({Key? key, required this.bmiresult, required this.Textresult, required this.Resulttext,  this.Gender1}) : super(key: key);
  final String bmiresult;
  final String Textresult;
  final String Resulttext;
  final Gender1 ;

  get selectedgender => Gender1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.2,
        title: Text(
          'BMI RESULT',
          style:
          TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: selectedgender==Gender.male ? Colors.cyan : Colors.pink ,),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Text(
                            Textresult,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red[500],
                              fontWeight: FontWeight.w500,

                            ),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 3,right: 2,top: 10),
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                        ],
                      ),
                      Expanded(
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
                                  Text(
                                    bmiresult,
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.w500,
                                        color: selectedgender==Gender.male ? Colors.cyan : Colors.pink
                                    ),
                                  ),
                                  Text(
                                      Resulttext,
                                      style: TextStyle(
                                          fontSize: 15
                                      )
                                  )
                                ],
                              ),
                            ),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20,right: 20),
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 3,right: 2,top: 10),
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 3,right: 2,top: 10),
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                color: selectedgender==Gender.male ? Colors.cyan : Colors.pink,
                                borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                              padding: EdgeInsets.all(3),
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'SUGGESION',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'To maintain your body and health regularly. we recommend you the next following options that may help you ',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        ),
                                      ),
                                    ],
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const Jogingpage()));                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            color: Colors.purple[700],
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: const Center(
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
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Hydratepage()));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            color: Colors.blue[600],
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: const Center(
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const Fitnesspage()));
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
                    color: selectedgender==Gender.male ? Colors.cyan :Colors.pink ,
                    child:  Center(
                      child: Text(
                        'RE-CALCULATE',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
