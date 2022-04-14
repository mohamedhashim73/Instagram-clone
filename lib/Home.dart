import 'package:flutter/material.dart';
import 'package:textdformfield_app/Posts/Posts.dart';
import 'package:textdformfield_app/Settings/settings.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int selected_index = 0;
  List<Widget> Widget_Pages =[
    Main_Page(),
    Container(color: Colors.white,),
    Container(color: Colors.black,),
    Container(color: Colors.grey,),
    Settings_Page(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: selected_index,
        fixedColor: Colors.black,
        iconSize: 30,
        onTap: (index){setState(() {
          selected_index = index;
        });},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: ""),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage("images/mo.png")),label: ""),
        ],
      ),
      body: Widget_Pages.elementAt(selected_index),
    );
  }
}
