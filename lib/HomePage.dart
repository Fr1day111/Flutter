import 'package:flutter/material.dart';
import 'package:untitled1/HorizontalList.dart';

import 'GridPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _name=['Apple','Ball','Cat','Dog','iraj'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          OutlinedButton(onPressed:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HorizontalList()));
          },
              child: Text('Horizontal List',
            style: TextStyle(fontSize: 25),
          )),
          ElevatedButton(onPressed:(){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => GridPage()));
          }, child: Text('Grid View')),
          Expanded(
            child: ListView.builder(
              itemCount: _name.length,
                itemBuilder: (context,index){
                return ListTile(
                  title: Container(
                  child: Text(_name[index],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.amberAccent
                  ),)
                ));
                }),
          ),
        ],
      ),
    );
  }
}
