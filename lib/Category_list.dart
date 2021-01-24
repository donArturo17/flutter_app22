Widget _categorylist() => ListView(
  children: [
    _title('Health' ,Icons.accessibility),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Finance', Icons.attach_money),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Education', Icons.school),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Social', Icons.child_friendly),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Art', Icons.terrain),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Spiritual/Meditation', Icons.whatshot),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Sport', Icons.motorcycle),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Nutrition', Icons.restaurant),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Other', Icons.settings_ethernet),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Work', Icons.work),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Home', Icons.home),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
    _title('Bad Habits', Icons.smoke_free),
    Divider(
      thickness: 3.0,
      color: Colors.blue,
    ),
  ],
);

ListTile _title(String title, IconData iconhabit) => ListTile(
  title: Text(title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
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