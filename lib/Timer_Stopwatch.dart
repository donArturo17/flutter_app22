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
  final dur = const Duration(seconds: 1);

  bool startispressed = true;
  bool stopispressed = true;
  bool resetispressed = true;
  String stoptimetodisplay = "00:00:00";
  var swatch = Stopwatch();
  String startbuttontext = "Start";

  void starttimer() {
    Timer(dur, keeprunning);
  }

  void keeprunning() {
    if (swatch.isRunning) {
      starttimer();
    }
    setState(() {
      stoptimetodisplay = swatch.elapsed.inHours.toString().padLeft(2, "0") +
          ":" +
          (swatch.elapsed.inMinutes % 60).toString().padLeft(2, "0") +
          ":" +
          (swatch.elapsed.inSeconds % 60).toString().padLeft(2, "0");
    });
  }

  void startstoptwatch() {
    setState(() {
      stopispressed = false;
      startispressed = false;
      resetispressed = true;
    });
    swatch.start();
    starttimer();
  }

  void stopstopwatch() {
    setState(() {
      stopispressed = true;
      resetispressed = false;
      startispressed = true;
      startbuttontext = "Continue";
    });
    swatch.stop();
  }

  void resetstopwatch() {
    setState(() {
      startispressed = true;
      resetispressed = true;
      startbuttontext = "Start";
    });
    swatch.reset();
    stoptimetodisplay = "00:00:00";
  }

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

  DateTime _selectedDay = DateTime.now();
  List<dynamic> _selectedEvents = [];
  List<dynamic> _selectedHolidays = [];

  void _onDaySelected(DateTime day, List events, List events2) {
    setState(() {
      _selectedDay = day;
      _selectedEvents = events;
      _selectedHolidays = events2;
    });
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

  Widget manual() {
    return Container(
        child: Column(children: <Widget>[
          Container(
            height: 150.0,
            alignment: Alignment.bottomCenter,
            child: TableCalendar(
              daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(color: Colors.white),
                  weekendStyle: TextStyle(color: Colors.blueAccent)),
              startingDayOfWeek: StartingDayOfWeek.monday,
              headerStyle: HeaderStyle(
                leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
                rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
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
                weekendStyle: TextStyle(color: Colors.white54),
                todayStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
              calendarController: _controller,
              onDaySelected: _onDaySelected,
            ),
          ),
          Container(
            height: 300,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Coding",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
                Text((hour.toString() + " hour(s)" + min.toString() + " min(s)"),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                    )),
                Text(
                    (_selectedDay.day.toString() +
                        "." +
                        _selectedDay.month.toString() +
                        "." +
                        _selectedDay.year.toString()),
                    style: TextStyle(fontSize: 25.0, color: Colors.white)),
              ],
            ),
          ),
          Container(
            height: 150.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      showPickerNumber(context);
                    },
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 10.0,
                    ),
                    color: Colors.grey,
                    child: Text(
                      "Set Time",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 10.0,
                    ),
                    color: Colors.grey,
                    child: Text(
                      "Confirm",
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
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Coding",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
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
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: stopispressed ? null : stopstopwatch,
                  color: Colors.grey,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 15.0,
                  ),
                  child: Text(
                    "Stop/Pause",
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
                      onPressed: startispressed ? startstoptwatch : null,
                      color: Colors.grey,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 15.0,
                      ),
                      child: Text(
                        startbuttontext,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.grey,
                      onPressed: resetispressed ? null : resetstopwatch,
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
          indicatorColor: Colors.white,
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
          unselectedLabelColor: Colors.black,
          controller: tb,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          stopwatch(),
          manual(),
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
