import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String userName;
  String userPass;

  DetailPage(this.userName,this.userPass);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                   Text(widget.userName+ " " + widget.userPass),
                       ],
    )));
  }
}
