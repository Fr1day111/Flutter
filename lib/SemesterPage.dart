import 'package:flutter/material.dart';
import 'package:untitled1/SemesterPages/SemEight.dart';
import 'package:untitled1/SemesterPages/SemFive.dart';
import 'package:untitled1/SemesterPages/SemFour.dart';
import 'package:untitled1/SemesterPages/SemOne.dart';
import 'package:untitled1/SemesterPages/SemSeven.dart';
import 'package:untitled1/SemesterPages/SemSix.dart';
import 'package:untitled1/SemesterPages/SemThree.dart';
import 'package:untitled1/SemesterPages/SemTwo.dart';

class SemesterPage extends StatefulWidget {
  const SemesterPage({Key? key}) : super(key: key);

  @override
  State<SemesterPage> createState() => _SemesterPageState();
}

class _SemesterPageState extends State<SemesterPage> {
  bool isDarkTheme=false;
  var themeLight=ThemeData(brightness: Brightness.light,
      primarySwatch: Colors.blue,
  fontFamily: 'Splash',textTheme: TextTheme(
        headline1: TextStyle(fontSize: 40,color: Colors.greenAccent),
      headline2: TextStyle(fontSize: 30,color: Colors.cyan)
      ),);
  var themeDark=ThemeData(brightness: Brightness.dark,
      primarySwatch: Colors.red,fontFamily: 'Finlandica');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:isDarkTheme?themeDark:themeLight,
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Semester Page"),
            backgroundColor: Colors.greenAccent,
            actions: [Switch(value: isDarkTheme, onChanged: (value){
              setState((){
                isDarkTheme=value;
              });
            })],
            bottom: TabBar(
              indicatorColor: Colors.red,
              isScrollable: true,
              tabs: [
                Tab(text: 'FirstTab', icon: Icon(Icons.add_box,color: Colors.black,),),
                Tab(text: 'SecondTab', icon: Icon(Icons.account_circle,color: Colors.black)),
                Tab(text: 'ThirdTab', icon: Icon(Icons.other_houses,color: Colors.black)),
                Tab(text: 'ForthTab', icon: Icon(Icons.back_hand,color: Colors.black)),
                Tab(text: 'FifthTab', icon: Icon(Icons.cabin,color: Colors.black)),
                Tab(text: 'SixthTab', icon: Icon(Icons.dangerous,color: Colors.black)),
                Tab(text: 'SeventhTab', icon: Icon(Icons.e_mobiledata,color: Colors.black)),
                Tab(
                    text: 'EighthTab',
                    icon: Icon(Icons.favorite_border_outlined,color: Colors.black))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              //Center(child: Text("Sem1",style: TextStyle(fontFamily: 'Splash',fontSize: 60),),),
              //Center(child: Text("Sem2",style: TextStyle(fontFamily: 'Splash',fontSize: 60)),),
              //Center(child: Text("Sem3",style: TextStyle(fontFamily: 'Splash',fontSize: 60)),),
              //Center(child: Text("Sem4",style: TextStyle(fontFamily: 'Splash',fontSize: 60)),),
              //Center(child: Text("Sem5",style: TextStyle(fontFamily: 'Splash',fontSize: 60)),),
              //Center(child: Text("Sem6",style: TextStyle(fontFamily: 'Splash',fontSize: 60)),),
              //Center(child: Text("Sem7",style: TextStyle(fontFamily: 'Splash',fontSize: 60)),),
              //Center(child: Text("Sem8",style: TextStyle(fontFamily: 'Splash',fontSize: 60)),),
            SemOnePage(),
            SemTwoPage(),
            SemThreePage(),
            SemFourPage(),
            SemFivePage(),
            SemSixPage(),
            SemSevenPage(),
            SemEightPage(),
            ],
          ),
        ),
      ),
    );
  }
}
