import 'package:flutter/material.dart';
import 'package:plant_app/favourite.dart';
import 'package:plant_app/home/home_screen.dart';
import 'package:plant_app/search_screen.dart';
import 'package:plant_app/settings_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.userName});
  final String userName;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
 
  @override
  Widget build(BuildContext context) {
     List<Widget> screens = [
      HomeScreen(userName: widget.userName),
      SearchScreen(),
      FavouriteScreen(),
      SettingsScreen(),
    ];
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.grey[100],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 10,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "settings",
          ),
        ],
      ),
    );
  }
}
