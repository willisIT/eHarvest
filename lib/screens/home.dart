import 'package:eharvest/screens/categories.dart';
import 'package:eharvest/screens/help.dart';
import 'package:eharvest/screens/homeContent.dart';
import 'package:eharvest/screens/profileContent.dart';
import 'package:eharvest/screens/settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  Widget _callPages(index){
    switch(index){
      case 0: {
        return HomeContentPage();
      }
      case 1: {
        return ProfilePage();
      }
      case 2: {
        return CategoriesPage();
      }
      case 3: {
        return SettingsPage();
      }
      case 4: {
        return HelpPage();
      }

      default: return HomeContentPage();
          
          
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    Size _size = MediaQuery.of(context).size;  

    return Scaffold(
      body: _callPages(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(fontSize: 10.0),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home", style: TextStyle(color: Colors.white),),
            backgroundColor: _theme.primaryColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile", style: TextStyle(color: Colors.white),),
            backgroundColor: _theme.primaryColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Categories", style: TextStyle(color: Colors.white),),
            backgroundColor: _theme.primaryColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings", style: TextStyle(color: Colors.white),),
            backgroundColor: _theme.primaryColor
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text("Help", style: TextStyle(color: Colors.white),),
            backgroundColor: _theme.primaryColor
          ),
        ],
      ),
    );
  }
}