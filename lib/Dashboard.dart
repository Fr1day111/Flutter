import 'package:flutter/material.dart';
import 'package:untitled1/SemesterPage.dart';

import 'HomePage.dart';
import 'ProfilePage.dart';
import 'SettingsPage.dart';

class DashBoardPage extends StatefulWidget {
 var userName;
 var userPass;
 DashBoardPage(this.userName,this.userPass);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  var _screens=[];

  var _selectedIndex = 0;


  @override
  void initState() {
    super.initState();
    _screens = [SettingsPage(), ProfilePage(widget.userName), MainPage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_selectedIndex]),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.abc_rounded),
              title: Text("SemesterPage"),
              trailing: Icon(Icons.abc),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SemesterPage(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.abc_rounded),
              title: Text("Item2"),
              trailing: Icon(Icons.abc),
              onTap: (){
                print("Item 2 clicked");
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
       currentIndex: _selectedIndex,

        onTap: (index){
          setState((){
          _selectedIndex=index;
          });
        },


      ),
    );
  }
}
