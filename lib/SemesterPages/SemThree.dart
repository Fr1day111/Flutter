import 'package:flutter/material.dart';
 class SemThreePage extends StatefulWidget {
   const SemThreePage({Key? key}) : super(key: key);

   @override
   State<SemThreePage> createState() => _SemThreePageState();
 }

 class _SemThreePageState extends State<SemThreePage> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       theme: ThemeData(
         brightness: Brightness.light,
         primarySwatch: Colors.blue
       ),
       home: Container(),
     );
   }
 }
