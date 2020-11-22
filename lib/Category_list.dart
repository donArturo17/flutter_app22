import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget _categorylist() => ListView(
  children: [
    _title('Health', 'e.g. Fitness, Sport, etc.' ,Icons.accessibility),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Finance', 'e.g. saving every day 20', Icons.attach_money),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Education', 'e.g. study French, etc.', Icons.school),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
  ],
);

ListTile _title(String title, String subtitle, IconData iconhabit) => ListTile(
  title: Text(title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      )),
  subtitle: Text(subtitle,
      style: TextStyle(
        color: Colors.white,
      )),
  leading: Icon(
    iconhabit,
    color: Colors.blue[500],
  ),
  trailing:
  Icon(
    Icons.done,
    color: Colors.grey,
  ),

);

