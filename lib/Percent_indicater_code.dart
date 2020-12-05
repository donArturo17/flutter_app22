import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app22/Habit%20Buttons.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_picker/flutter_picker.dart';


import 'package:flutter/material.dart';
import 'Circle_progress.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Circle Progress'),
//     );
//   }
// }

class Prozentanzeige extends StatefulWidget {
  Prozentanzeige({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProzentanzeigeState createState() => _ProzentanzeigeState();
}

class _ProzentanzeigeState extends State<Prozentanzeige> with SingleTickerProviderStateMixin {

  AnimationController progressController;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    progressController = AnimationController(vsync: this,duration: Duration(milliseconds: 1000));
    animation = Tween<double>(begin: 0,end: 80).animate(progressController)..addListener((){
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
                child: CustomPaint(
                foregroundPainter: CircleProgress(animation.value), // this will add custom painter after child
                child: Container(
                  width: 200,
                  height: 200,
                  child: GestureDetector(
                      onTap: (){
                        if(animation.value == 80){
                          progressController.reverse();
                        }else {
                          progressController.forward();
                        }
                      },
                      child: Center(child: Text("${animation.value.toInt()} %",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),))
                  ),
                ),
              )
            ),
        ],
      );

  }
}