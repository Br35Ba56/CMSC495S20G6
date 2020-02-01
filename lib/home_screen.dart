import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pantry/camera.dart';
import 'scan_screen.dart';
import 'pantry_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final widgetOptions = [
    PantryList(),
    CameraWidget(),
    Scan(),
    //Text('Will Scan'),
    Text('Expires First'),
    Text('Search/Filter')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantry Application '),
      ),
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.local_library), title: Text('Inventory')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), title: Text('New Item')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text('Scan Item')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Text('Expiring')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.teal,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
