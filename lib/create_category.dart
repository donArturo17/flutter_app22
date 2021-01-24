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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'My Habits'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  double Textgr = 2.1;
  int _currentIndex = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var buttoncoloractive = Color.fromRGBO(54, 182, 255, 1);
  String _categoryname;
  var iconcolor = Colors.white;
  var selectedicon = Icons.mail;

  Widget _buildName() {
    return TextFormField(
      style: TextStyle(color: Colors.white, fontSize: 20.0),
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: buttoncoloractive, width: 3.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: buttoncoloractive, width: 3.0),
          ),
          hintText: "Coding Project",
          labelText: "Name of your category",
          suffixStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          labelStyle: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 3.0),
          )),
      maxLength: 20,
      onSaved:  (String value) {
        _categoryname = value;
        _formKey.currentState.save();},
      onChanged:  (String value) {
        _categoryname = value;
        _formKey.currentState.save();},
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
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
              alignment: Alignment.center,
              width: 500,
              child: Column(children: <Widget>[
                Container(
                  width: 400,
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildName(),
                    ],
                  ),
                ),
              ])),
          Divider(
            color: Color.fromRGBO(54, 182, 255, 1),
            thickness: 3,
          ),
          Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Choose your Icon",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            iconcolor = buttoncoloractive;
                            selectedicon = Icons.email;
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.email,
                            color: iconcolor,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            selectedicon = Icons.beach_access;
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.beach_access,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            selectedicon = Icons.drive_eta;
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.drive_eta,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.directions_bike,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.brightness_4,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.public,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.restaurant,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.airplanemode_active,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.audiotrack,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.power,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.build,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.smoking_rooms,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.person_pin,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.block,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.pan_tool,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.airline_seat_individual_suite,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.call,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.time_to_leave,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.toys,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.tablet_android,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.sentiment_very_satisfied,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.fastfood,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.directions_run,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.insert_drive_file,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.add_location,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.computer,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.supervisor_account,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.business_center,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),
                        IconButton(
                          onPressed: () {
                            // You enter here what you want the button to do once the user interacts with it
                          },
                          icon: Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                          iconSize: 40.0,
                        ),],
                    ),
                  ])),
          Divider(
            color: Color.fromRGBO(54, 182, 255, 1),
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                _categoryname.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              IconButton(
                onPressed: () {
                  // You enter here what you want the button to do once the user interacts with it
                },
                icon: Icon(
                  selectedicon,
                  color: Colors.white,
                ),
                iconSize: 40.0,
              ),
            ],
          ),
          RaisedButton(
            shape: StadiumBorder(),
            splashColor: Color.fromRGBO(54, 182, 255, 1),
            color: Color.fromRGBO(54, 182, 255, 1),
            child: Text("Save",
                style: TextStyle(fontSize: 18.0, color: Colors.white)),
            onPressed: () {
              if (!_formKey.currentState.validate()) {
                return;
              }
              _formKey.currentState.save();
              print(_categoryname);
              //Send to API
            },
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
