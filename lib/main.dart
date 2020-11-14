import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app22/Habit%20Buttons.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:flutter_picker/flutter_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Habits'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

double Textgr = 2.1;

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  int _currentIndex = 0;

  var _periods = ['day', 'week', 'month'];
  var _periodItemSelected = 'day';
  DateTime now = DateTime.now();
  TabController tb;
  int hour = 0;
  int min = 0;
  int sec = 0;
  int timeForSafe = 0;
  String timetodisplay = "";
  CalendarController _controller;

  void safe() {
    timeForSafe = ((hour * 60 * 60) + (min * 60) + sec);
    debugPrint(timeForSafe.toString());
    setState(() {
      if (timeForSafe < 60) {
        timetodisplay = timeForSafe.toString();
      } else if (timeForSafe < 3600) {
        int m = timeForSafe ~/ 60;
        int s = timeForSafe - (60 * m);
        timetodisplay = m.toString() + ":" + s.toString();
      } else {
        int h = timeForSafe ~/ 3600;
        int t = timeForSafe - (3600 * h);
        int m = t ~/ 60;
        int s = t - (60 * m);
        timetodisplay = h.toString() + ":" + m.toString() + ":" + s.toString();
      }
    });
  }


  void printdate() {



  }


  void timeselected() {
    debugPrint(timetodisplay.toString());
    setState(() {
      timetodisplay = hour.toString() + ":" + min.toString();
    });
  }

  void showPickerNumber(BuildContext context) {
    Picker(
        adapter: NumberPickerAdapter(data: [
          NumberPickerColumn(
            initValue: hour,
            begin: 0,
            end: 24,
          ),
          NumberPickerColumn(
            initValue: min,
            begin: 0,
            end: 60,
          ),
        ]),
        delimiter: [
          PickerDelimiter(
            child: Container(
              width: 45.0,
              alignment: Alignment.center,
              child: Text("min"),
            ),
          ),
          PickerDelimiter(
            child: Container(
              width: 45.0,
              alignment: Alignment.center,
              child: Text("hours"),
            ),
          ),
        ],
        hideHeader: true,
        title: Text("Please set hours and minutes"),
        selectedTextStyle: TextStyle(color: Colors.blue),
        onConfirm: (Picker picker, List value) {
          print(value.toString());
          print(picker.getSelectedValues());
          hour = value[0];
          min = value[1];
          timeselected();

        }).showDialog(context);
  }

  @override
  void initState() {
    tb = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
    _controller = CalendarController();
  }

  Widget timer() {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Container(
            height: 150.0,
            child: TableCalendar(
              daysOfWeekStyle:
                  DaysOfWeekStyle(weekdayStyle: TextStyle(color: Colors.white)),
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle: HeaderStyle(
                leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
                rightChevronIcon:
                    Icon(Icons.chevron_right, color: Colors.white),
                centerHeaderTitle: true,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                ),
                formatButtonVisible: false,
              ),
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                todayColor: Colors.grey,
                selectedColor: Colors.blueAccent,
                weekdayStyle: TextStyle(
                  color: Colors.white,
                ),
                unavailableStyle: TextStyle(color: Colors.white),
                weekendStyle: TextStyle(color: Colors.white),
                todayStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              calendarController: _controller,
              onDaySelected: (Datetime, date) ,

              ),
          ),
          Container(
            height: 200,
            child: Column(
              children: <Widget>[
                Text(
                  "Coding",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
                Text("hours : min",
                style: TextStyle(
                  fontSize:15.0,
                  color:Colors.grey,
                ),
                ),
                Text(date.day.toString()),
                Text(timetodisplay,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    )),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      showPickerNumber(context);
                    },
                    //Nach on Pressed kann die Funktion ShowPickerNumber eingefügt werden,
                    // um ein Pop-Up Fenster zu erzeugen für die Wahl der Stunden usw.
                    //
                    // () {showPickerNumber(context);},
                    //
                    //
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 10.0,
                    ),
                    color: Colors.grey,
                    child: Text(
                      "Set this Time",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ]),
          ),
        ]));
  }

  Widget stopwatch() {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "00:00:00",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
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
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
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
                        ),
                      ),
                    ),
                    RaisedButton(
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
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Colors.red,
          tabs: <Widget>[
            Text("Start"),
            Text("Manual"),
          ],
          labelPadding: EdgeInsets.only(
            bottom: 10.0,
          ),
          labelStyle: TextStyle(
            fontSize: 20.0,
          ),
          unselectedLabelColor: Colors.green,
          controller: tb,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          stopwatch(),
          timer(),
        ],
        controller: tb,
      ),
      backgroundColor: Color.fromRGBO(53, 53, 53, 1),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('My Habits'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outlined),
              title: Text('Statistics'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Add Habit'),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
