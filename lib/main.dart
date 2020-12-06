import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app22/Habit%20Buttons.dart';

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

class _MyHomePageState extends State<MyHomePage> {
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
  DateTime now = new DateTime.now();
  var _periods = ['day', 'week', 'month'];
  var _periodItemSelected = 'day';
  bool normalbuttonselected = false;
  bool vicebuttonselected = false;
  bool everydaybuttonselected = false;
  bool everyweekbuttonselected = false;
  bool everymonthbuttonselected = false;
  bool everyyearbuttonselected = false;
  bool weekdaysbuttonselected = false;

  var buttoncolornormal = Color.fromRGBO(120, 120, 120, 1);
  var buttoncolorvice = Color.fromRGBO(120, 120, 120, 1);
  var buttoncoloreveryday = Color.fromRGBO(120, 120, 120, 1);
  var buttoncoloreveryweek = Color.fromRGBO(120, 120, 120, 1);
  var buttoncoloreverymonth = Color.fromRGBO(120, 120, 120, 1);
  var buttoncoloreveryyear = Color.fromRGBO(120, 120, 120, 1);
  var buttoncolorweekdays = Color.fromRGBO(120, 120, 120, 1);

  var buttoncolornotactive = Color.fromRGBO(120, 120, 120, 1);
  var buttoncoloractive = Color.fromRGBO(54, 182, 255, 1);

  bool _isMonday = false;
  bool _isTuesday = false;
  bool _isWednesday = false;
  bool _isThursday = false;
  bool _isFriday = false;
  bool _isSaturday = false;
  bool _isSunday = false;

  bool viewVisible = false;

  var selectedColor = Color.fromRGBO(54, 182, 255, 1);

  void showCheckbox() {
    setState(() {
      viewVisible = true;
    });
  }

  void hideCheckbox() {
    setState(() {
      viewVisible = false;
    });
  }

  void normalselected() {
    setState(() {
      normalbuttonselected = true;
      vicebuttonselected = false;
      buttoncolornormal = buttoncoloractive;
      buttoncolorvice = buttoncolornotactive;
    });
  }

  void viceselected() {
    setState(() {
      normalbuttonselected = false;
      vicebuttonselected = true;
      buttoncolornormal = buttoncolornotactive;
      buttoncolorvice = buttoncoloractive;
    });
  }

  void everydayselected() {
    setState(() {
      everydaybuttonselected = true;
      everyweekbuttonselected = false;
      everymonthbuttonselected = false;
      everyyearbuttonselected = false;
      weekdaysbuttonselected = false;
      buttoncoloreveryday = buttoncoloractive;
      buttoncoloreveryweek = buttoncolornotactive;
      buttoncoloreverymonth = buttoncolornotactive;
      buttoncoloreveryyear = buttoncolornotactive;
      buttoncolorweekdays = buttoncolornotactive;
    });
    hideCheckbox();
  }

  void everyweekselected() {
    setState(() {
      everydaybuttonselected = false;
      everyweekbuttonselected = true;
      everymonthbuttonselected = false;
      everyyearbuttonselected = false;
      weekdaysbuttonselected = false;
      buttoncoloreveryday = buttoncolornotactive;
      buttoncoloreveryweek = buttoncoloractive;
      buttoncoloreverymonth = buttoncolornotactive;
      buttoncoloreveryyear = buttoncolornotactive;
      buttoncolorweekdays = buttoncolornotactive;
    });
    hideCheckbox();
  }

  void everymonthselected() {
    setState(() {
      everydaybuttonselected = false;
      everyweekbuttonselected = false;
      everymonthbuttonselected = true;
      everyyearbuttonselected = false;
      weekdaysbuttonselected = false;
      buttoncoloreveryday = buttoncolornotactive;
      buttoncoloreveryweek = buttoncolornotactive;
      buttoncoloreverymonth = buttoncoloractive;
      buttoncoloreveryyear = buttoncolornotactive;
      buttoncolorweekdays = buttoncolornotactive;
    });
    hideCheckbox();
  }

  void everyyearselected() {
    setState(() {
      everydaybuttonselected = false;
      everyweekbuttonselected = false;
      everymonthbuttonselected = false;
      everyyearbuttonselected = true;
      weekdaysbuttonselected = false;
      buttoncoloreveryday = buttoncolornotactive;
      buttoncoloreveryweek = buttoncolornotactive;
      buttoncoloreverymonth = buttoncolornotactive;
      buttoncoloreveryyear = buttoncoloractive;
      buttoncolorweekdays = buttoncolornotactive;
    });
    hideCheckbox();
  }

  void weeekdaysselected() {
    setState(() {
      everydaybuttonselected = false;
      everyweekbuttonselected = false;
      everymonthbuttonselected = false;
      everyyearbuttonselected = false;
      weekdaysbuttonselected = true;
      buttoncoloreveryday = buttoncolornotactive;
      buttoncoloreveryweek = buttoncolornotactive;
      buttoncoloreverymonth = buttoncolornotactive;
      buttoncoloreveryyear = buttoncolornotactive;
      buttoncolorweekdays = buttoncoloractive;
    });
    showCheckbox();
  }

  double currentslide = 0;

  void showselectedColor() {
    setState(() {
      if (currentslide == 0) {
        selectedColor = Color.fromRGBO(54, 182, 255, 1);
        ;
      } else {}
      if (currentslide == 10) {
        selectedColor = Colors.yellow;
        ;
      } else {}
      if (currentslide == 20) {
        selectedColor = Colors.blueAccent;
        ;
      } else {}
      if (currentslide == 30) {
        selectedColor = Colors.cyanAccent;
        ;
      } else {}
      if (currentslide == 40) {
        selectedColor = Colors.greenAccent;
        ;
      } else {}
      if (currentslide == 50) {
        selectedColor = Colors.orange;
        ;
      } else {}
      if (currentslide == 60) {
        selectedColor = Colors.lightGreen;
        ;
      } else {}
      if (currentslide == 70) {
        selectedColor = Colors.purpleAccent;
        ;
      } else {}
      if (currentslide == 80) {
        selectedColor = Colors.deepOrange;
        ;
      } else {}
      if (currentslide == 90) {
        selectedColor = Colors.brown;
        ;
      } else {}
      if (currentslide == 100) {
        selectedColor = Colors.red;
        ;
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              width: 500,
              height: 100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Name of your Yes/No Habit?',
                        style: TextStyle(fontSize: 20.0, color: Colors.white)),
                    Nameofhabit(),
                  ])),
          Divider(
            color: Color.fromRGBO(54, 182, 255, 1),
            thickness: 3,
          ),
          Container(
            height: 100,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Category',
                      style: TextStyle(fontSize: 18.0, color: Colors.white)),
                  SelectCategory(),
                ]),
          ),
          Divider(
            color: Color.fromRGBO(54, 182, 255, 1),
            thickness: 3,
          ),
          Text("Function",
              style: TextStyle(fontSize: 18.0, color: Colors.white)),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  shape: StadiumBorder(),
                  splashColor: Color.fromRGBO(54, 182, 255, 1),
                  color: buttoncolornormal,
                  child: Text("Normal",
                      style: TextStyle(fontSize: 18.0, color: Colors.white)),
                  onPressed: normalselected,
                ),
                RaisedButton(
                  shape: StadiumBorder(),
                  splashColor: Color.fromRGBO(54, 182, 255, 1),
                  color: buttoncolorvice,
                  child: Text("Vice",
                      style: TextStyle(fontSize: 18.0, color: Colors.white)),
                  onPressed: viceselected,
                ),
              ]),
          Divider(
            color: Color.fromRGBO(54, 182, 255, 1),
            thickness: 3,
          ),
          Text("Period", style: TextStyle(fontSize: 18.0, color: Colors.white)),
          Column(
            children: <Widget>[
              RaisedButton(
                shape: StadiumBorder(),
                splashColor: Color.fromRGBO(54, 182, 255, 1),
                color: buttoncoloreveryday,
                child: Text("Every Day",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                onPressed: everydayselected,
              ),
              RaisedButton(
                shape: StadiumBorder(),
                splashColor: Color.fromRGBO(54, 182, 255, 1),
                color: buttoncoloreveryweek,
                child: Text("Every Week",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                onPressed: everyweekselected,
              ),
              RaisedButton(
                shape: StadiumBorder(),
                splashColor: Color.fromRGBO(54, 182, 255, 1),
                color: buttoncoloreverymonth,
                child: Text("Every Month",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                onPressed: everymonthselected,
              ),
              RaisedButton(
                shape: StadiumBorder(),
                splashColor: Color.fromRGBO(54, 182, 255, 1),
                color: buttoncoloreveryyear,
                child: Text("Every Year",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                onPressed: everyyearselected,
              ),
              RaisedButton(
                shape: StadiumBorder(),
                splashColor: Color.fromRGBO(54, 182, 255, 1),
                color: buttoncolorweekdays,
                child: Text("Select week days",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                onPressed: weeekdaysselected,
              ),
            ],
          ),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              height: 75.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Checkbox(
                        activeColor: buttoncoloractive,
                        value: _isMonday,
                        onChanged: (value) {
                          setState(() {
                            _isMonday = value;
                          });
                        },
                      ),
                      Text("Mo",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Checkbox(
                        activeColor: buttoncoloractive,
                        value: _isTuesday,
                        onChanged: (value) {
                          setState(() {
                            _isTuesday = value;
                          });
                        },
                      ),
                      Text("Tu",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Checkbox(
                        activeColor: buttoncoloractive,
                        value: _isWednesday,
                        onChanged: (value) {
                          setState(() {
                            _isWednesday = value;
                          });
                        },
                      ),
                      Text("We",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Checkbox(
                        activeColor: buttoncoloractive,
                        value: _isThursday,
                        onChanged: (value) {
                          setState(() {
                            _isThursday = value;
                          });
                        },
                      ),
                      Text("Th",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Checkbox(
                        activeColor: buttoncoloractive,
                        value: _isFriday,
                        onChanged: (value) {
                          setState(() {
                            _isFriday = value;
                          });
                        },
                      ),
                      Text("Fr",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Checkbox(
                        activeColor: buttoncoloractive,
                        value: _isSaturday,
                        onChanged: (value) {
                          setState(() {
                            _isSaturday = value;
                          });
                        },
                      ),
                      Text("Sa",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Checkbox(
                        activeColor: buttoncoloractive,
                        value: _isSunday,
                        onChanged: (value) {
                          setState(() {
                            _isSunday = value;
                          });
                        },
                      ),
                      Text("Su",
                          style:
                              TextStyle(fontSize: 15.0, color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Color.fromRGBO(54, 182, 255, 1),
            thickness: 3,
          ),
          Container(
            height: 200.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Color",
                    style: TextStyle(fontSize: 20.0, color: Colors.white)),
                Text("Set the color style for your habit",
                    style: TextStyle(fontSize: 14.0, color: Colors.grey)),
                AnimatedContainer(
                  width: 100.0,
                  height: 50.0,
                  color: selectedColor,
                  duration: Duration(seconds: 0),
                ),
                Slider(
                    value: currentslide,
                    activeColor: selectedColor,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    onChanged: (double value) {
                      setState(() {
                        currentslide = value;
                      });
                      showselectedColor();
                    }),
                Divider(
                  color: Color.fromRGBO(54, 182, 255, 1),
                  thickness: 3,
                ),
              ],
            ),
          ),
        ]),
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

class Nameofhabit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return Container(
      width: 327,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(54, 182, 255, 1), width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        border: Border.all(color: Color.fromRGBO(54, 182, 255, 1), width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        border: Border.all(color: Color.fromRGBO(54, 182, 255, 1), width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10)),
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

class SelectCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Component2Widget - INSTANCE
    return RaisedButton(
      shape: StadiumBorder(),
      splashColor: Color.fromRGBO(54, 182, 255, 1),
      color: Color.fromRGBO(120, 120, 120, 1),
      child: Text("select category",
          style: TextStyle(fontSize: 15.0, color: Colors.white)),
      onPressed: () {},
    );
  }
}
