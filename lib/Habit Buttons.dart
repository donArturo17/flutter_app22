import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Simplehabit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return Container(
      width: 242,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius : BorderRadius.all(Radius.circular(10)
        ),
        color : Color.fromRGBO(120, 120, 120, 1),
      ),
      child: Text('Yes No Habit',textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(242, 242, 242, 1),
        fontFamily: 'Roboto',
        fontSize: 20,
      ),
      ),
    );
  }
}



class Countinghabit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return Container(
      width: 242,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius : BorderRadius.all(Radius.circular(10)
        ),
        color : Color.fromRGBO(120, 120, 120, 1),
      ),
      child: Text('Counting Habit',textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(242, 242, 242, 1),
        fontFamily: 'Roboto',
        fontSize: 20,
      ),
      ),
    );
  }
}

class Timerhabit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return Container(
      width: 242,
      height: 36,

      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius : BorderRadius.all(Radius.circular(10)
        ),
        color : Color.fromRGBO(120, 120, 120, 1),
      ),
      child: Text('Timer Habit',textAlign: TextAlign.center, style: TextStyle(
        color: Color.fromRGBO(242, 242, 242, 1),
        fontFamily: 'Roboto',
        fontSize: 20,
      ),
      ),
    );
  }
}


class Enterhabit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return Container(
      width: 327,
      height: 36,

      alignment: Alignment.center,
      decoration: BoxDecoration(
        border : Border.all(
        color: Color.fromRGBO(54, 182, 255, 1),
        width: 2.0),
        borderRadius : BorderRadius.all(Radius.circular(10)
        ),
        color: Color.fromRGBO(120, 120, 120, 1),
      ),

      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Name your habit here',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),

    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return Container(
      width: 150,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border : Border.all(
            color: Color.fromRGBO(54, 182, 255, 1),
            width: 2.0),
        borderRadius : BorderRadius.all(Radius.circular(10)
        ),
        color: Color.fromRGBO(120, 120, 120, 1),
      ),

      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Number',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),

    );
  }
}

class Unit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return Container(
      width: 150,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border : Border.all(
            color: Color.fromRGBO(54, 182, 255, 1),
            width: 2.0),
        borderRadius : BorderRadius.all(Radius.circular(10)
        ),
        color: Color.fromRGBO(120, 120, 120, 1),
      ),

      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
            hintText: 'Unit',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),

    );
  }
}
