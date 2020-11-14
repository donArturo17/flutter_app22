import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
          children: <Widget> [
            Container(
                width: 500,
                height: 250,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      Text('What kind of habit do you want to add?', style: TextStyle(fontSize: 22.0, color: Colors.white)),
                      Simplehabit(),
                      Countinghabit(),
                      Timerhabit(),


                    ]
                )
            ),

            Divider (
              color: Color.fromRGBO(54, 182, 255, 1),
              thickness: 5,
            ),
            Container(
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text('e.g. read 30 pages per week', style: TextStyle(fontSize: 16, color: Colors.grey)),
                    Text('Counting Habit', style: TextStyle(fontSize: 18.0, color: Colors.white)),
                    Enterhabit(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget> [
                          Text('At least', style: TextStyle(fontSize: 16, color: Colors.white)),
                          Number(),
                          Unit(),

                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>  [
                          Text('a / per',style: TextStyle(fontSize: 16, color: Colors.white)),
                          Container(
                            width: 150,
                            height: 36,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.all(Radius.circular(10)
                              ),
                              color : Color.fromRGBO(120, 120, 120, 1),
                              border : Border.all(
                                  color: Color.fromRGBO(54, 182, 255, 1),
                                  width: 2.0),
                            ),

                            child: DropdownButton<String>(
                              items: _periods.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                    value: dropDownStringItem,
                                    child: Text(dropDownStringItem)
                                );
                              }).toList(),

                              style: TextStyle(color: Colors.white),
                              dropdownColor: Color.fromRGBO(120, 120, 120, 1),

                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._periodItemSelected = newValueSelected;
                                });
                              },
                              value: _periodItemSelected,

                            ),
                          ),







                        ]),

                  ]),
            ),
          ]

      ),

      backgroundColor: Color.fromRGBO(53, 53, 53, 1),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text ('My Habits'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outlined),
              title: Text ('Statistics'),
            ),
            BottomNavigationBarItem(
              icon: Icon
                (Icons.add),
              title: Text ('Add Habit'),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }
      ),
    );
  }
}


