import 'package:flutter/material.dart';


class Group3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group3Widget - GROUP
    return Container(
        width: 360,
        height: 640,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 360,
                      height: 640,
                      decoration: BoxDecoration(
                        color : Color.fromRGBO(53, 53, 53, 1),
                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 57,
                                left: 8,
                                child: null
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: null
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: null
                            ),Positioned(
                                top: 583,
                                left: 0,
                                child: null
                            ),Positioned(
                                top: 11,
                                left: 144,
                                child: Text('My Habits', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(242, 242, 242, 1),
                                    fontFamily: 'Roboto',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }
}
