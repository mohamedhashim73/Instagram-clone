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
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: selected_index,
        iconSize: 28,
        onTap: (index){setState(() {
          selected_index = index;
        });},
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: "",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video,color: Colors.white,),label: "",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.white,),label: "",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage("images/mo.png"),radius: 15,),label: ""),
        ],
      ),
      body: Widget_Pages.elementAt(selected_index),
    );
  }
}
