
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app22/Habit%20Buttons.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> with TickerProviderStateMixin {


    bool startispressed = true;
    bool stopispressed = true;
    bool resetispressed = true;
    String stoptimetodisplay = "00:00:00";
    var swatch = Stopwatch();
    final dur = const Duration(seconds:1);

    void starttimer(){
      Timer(dur, keeprunning);
    }


    void keeprunning(){
      if(swatch.isRunning){
        starttimer();
      }
      setState(() {
        stoptimetodisplay = swatch.elapsed.inHours.toString().padRight(2, "0") + ":"
            + (swatch.elapsed.inMinutes%60).toString().padLeft(2, "0")
            +(swatch.elapsed.inSeconds%60).toString().padLeft(2, "0");
      });
    }

    void startstopwatch(){
      setState(() {
        stopispressed = false;
      });
      swatch.start();
      starttimer();

    }

    void stopstopwatch(){


    }

    void resetstopwatch(){


    }







    return Container(
        child: Column(
            children: <Widget> [
              Expanded(
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    stoptimetodisplay,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex:4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                            onPressed: stopispressed ? null : stopstopwatch ,
                            color: Colors.grey,
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.0,
                              vertical: 15.0,
                            ),
                            child: Text(
                                "Stop",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                )
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children :<Widget>[
                            RaisedButton(
                                onPressed: startispressed ? startstopwatch : null ,
                                color: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40.0,
                                  vertical: 15.0,
                                ),
                                child: Text(
                                    "Start",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    )
                                )
                            ),
                            RaisedButton(
                              onPressed: resetispressed ? null: resetstopwatch ,
                              color: Colors.grey,
                              padding: EdgeInsets.symmetric(
                                horizontal: 40.0,
                                vertical: 15.0,
                              ),
                              child: Text(
                                  "Reset",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )
                              ),
                            )
                          ],
                        )

                      ]
                  )
              )
            ]
        )
    );

  }
}