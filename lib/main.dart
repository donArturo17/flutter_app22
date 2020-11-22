import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app22/Habit%20Buttons.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:flutter_picker/flutter_picker.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'Category_list.dart';

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

  @override
  void initState() {
    tb = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
    _controller = CalendarController();
  }

  double habitprocentage = 0.789;
  double thisweekprocentage = 0.489;
  double thismonthprocentage = 0.888;
  double thisyearprocentage = 0.184;

  Widget statistics_Habit() {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
            height: 40.0,
            alignment: Alignment.center,
            child: Text("Total Score",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ))),
        Container(
            height: 300,
            width: 300,
            child: CircularPercentIndicator(
              progressColor: Colors.blueAccent,
              percent: habitprocentage,
              animation: true,
              radius: 250.0,
              lineWidth: 15.0,
              circularStrokeCap: CircularStrokeCap.round,
              backgroundColor: Colors.grey,
              center: Text((habitprocentage * 100).toString() + "%",
                  style: TextStyle(fontSize: 30.0, color: Colors.white)),
            )),
        Container(
            height: 50.0,
            width: 400,
            alignment: Alignment.center,
            child: Text("Statistics",
                style: TextStyle(fontSize: 30.0, color: Colors.white))),
        Divider(
          thickness: 2.0,
          color: Colors.blue,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 40.0,
                alignment: Alignment.center,
                child: Text("Current Streak",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
              ),
            ),
            Expanded(
              child: Container(
                height: 40.0,
                alignment: Alignment.center,
                child: Text(
                  "Best Streak",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                  height: 35.0,
                  alignment: Alignment.center,
                  child: Text("4 Days",
                      style: TextStyle(fontSize: 20.0, color: Colors.white))),
            ),
            Expanded(
              child: Container(
                height: 35.0,
                alignment: Alignment.center,
                child: Text(
                  "15 Days",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 40.0,
        ),
        Container(
            height: 200.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                                height: 35.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                child: Text("This week:",
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white))),
                          ),
                          Expanded(
                            child: Container(
                                height: 35.0,
                                width: 100.0,
                                alignment: Alignment.center,
                                child: Text(
                                    (thisweekprocentage * 100).toString() +
                                        " %",
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.white))),
                          ),
                          Expanded(
                            child: Container(
                              height: 35.0,
                              alignment: Alignment.center,
                              child: Text(
                                "15 Days",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LinearPercentIndicator(
                            progressColor: Colors.blueAccent,
                            percent: thisweekprocentage,
                            animation: true,
                            width: 350,
                            linearStrokeCap: LinearStrokeCap.round,
                            backgroundColor: Colors.red,
                            center: Text(
                                (habitprocentage * 100).toString() + "%",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.white)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                            height: 35.0,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: Text("This month:",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                      ),
                      Expanded(
                        child: Container(
                            height: 35.0,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: Text(
                                (thismonthprocentage * 100).toString() + " %",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.white))),
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          child: Text(
                            "7 Days",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearPercentIndicator(
                        progressColor: Colors.blueAccent,
                        percent: thismonthprocentage,
                        animation: true,
                        width: 350,
                        linearStrokeCap: LinearStrokeCap.round,
                        backgroundColor: Colors.red,
                        center: Text((habitprocentage * 100).toString() + "%",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                            height: 35.0,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: Text("This year:",
                                style: TextStyle(
                                    fontSize: 20.0, color: Colors.white))),
                      ),
                      Expanded(
                        child: Container(
                            height: 35.0,
                            width: 100.0,
                            alignment: Alignment.center,
                            child: Text(
                                (thisyearprocentage * 100).toString() + " %",
                                style: TextStyle(
                                    fontSize: 30.0, color: Colors.white))),
                      ),
                      Expanded(
                        child: Container(
                          height: 35.0,
                          alignment: Alignment.center,
                          child: Text(
                            "19 Days",
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearPercentIndicator(
                        progressColor: Colors.blueAccent,
                        percent: thisyearprocentage,
                        animation: true,
                        width: 350,
                        linearStrokeCap: LinearStrokeCap.round,
                        backgroundColor: Colors.red,
                        center: Text((habitprocentage * 100).toString() + "%",
                            style:
                                TextStyle(fontSize: 30.0, color: Colors.white)),
                      ),
                    ],
                  ),
                ])),
      ]),
    );
  }

  Widget calendar_Habit() {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          width: 400,
          alignment: Alignment.topCenter,
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
            initialCalendarFormat: CalendarFormat.month,
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
          ),
        ),
        Divider(
          thickness: 2.0,
          color: Colors.blue,
        ),
        Container(
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text("Start-Date:",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
            Text("22 August 2020",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                )),
          ]),
        ),
      ]),
    );
  }


  Widget _settinglist() => ListView(
    children: [
      _title('Habit name', 'Coding' ),
      Divider(
        thickness: 3.0,
        color: Colors.blue,
      ),
      _title('Category', 'Finance'),
      Divider(
        thickness: 3.0,
        color: Colors.blue,
      ),
      _title('Habit', 'Yes/No Habit'),
      Divider(
        thickness: 3.0,
        color: Colors.blue,
      ),
      _title('Frequency', 'Every day'),
      Divider(
        thickness: 3.0,
        color: Colors.blue,
      ),
      _title('Start Date', '22 August 2020'),
      Divider(
        thickness: 3.0,
        color: Colors.blue,
      ),
    ],
  );

  ListTile _title(String title, String subtitle) => ListTile(
    title: Text(title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle,
        style: TextStyle(
          color: Colors.white,
        ),
    ),
    trailing:
    Icon(
      Icons.edit,
      color: Colors.grey,
    ),
  );



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
            Icon(Icons.data_usage),
            Icon(Icons.calendar_today),
            Icon(Icons.settings),
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
          statistics_Habit(),
          calendar_Habit(),
          _settinglist(),
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
