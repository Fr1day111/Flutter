import 'package:flutter/material.dart';
class HorizontalList extends StatefulWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(color: Colors.green,width: 160,child: Text('Apple')),
            Container(color: Colors.red,width: 160,child: Text('Ball')),
            Container(color: Colors.cyan,width: 160,child: Text('Cat')),
            Container(color: Colors.yellow,width: 160,child: Text('Dog'))
          ],
        ),
      ),
    );
  }
}
