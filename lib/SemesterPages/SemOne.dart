import 'package:flutter/material.dart';

class SemOnePage extends StatefulWidget {
  const SemOnePage({Key? key}) : super(key: key);

  @override
  State<SemOnePage> createState() => _SemOnePageState();
}

class _SemOnePageState extends State<SemOnePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Semester Overview',
              style: TextStyle(fontFamily: 'Splash', fontSize: 30),
            ),
            Card(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.looks_one_rounded),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Credit Hour :40'),
                            Text( 'Total Subjects : 6'),
                             Text( 'Total Days :500'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: null, child: Text('SGPA:4')),
                        TextButton(onPressed: null, child: Text('View Result'))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Courses",
              style: TextStyle(fontSize: 40, fontFamily: 'Splash'),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Engineering Mathematics I",style: TextStyle(fontSize: 15,color: Colors.red)),
                          SizedBox(height: 10,),
                          Text('Total Credit Hour:4'),
                          Text("Difficulty Level:Hard"),
                          Text("Total Chapter:10"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("C Programming",style: TextStyle(fontSize: 15,color: Colors.red)),
                          SizedBox(height: 10,),
                          Text('Total Credit Hour:4'),
                          Text("Difficulty Level:Hard"),
                          Text("Total Chapter:9"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Chemistry",style: TextStyle(fontSize: 15,color: Colors.red)),
                          SizedBox(height: 10,),
                          Text('Total Credit Hour:4'),
                          Text("Difficulty Level:Hard"),
                          Text("Total Chapter:14"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Communication Techniques",style: TextStyle(fontSize: 15,color: Colors.red)),
                          SizedBox(height: 10,),
                          Text('Total Credit Hour:3'),
                          Text("Difficulty Level:Easy"),
                          Text("Total Chapter:10"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mechanical Workshop",style: TextStyle(fontSize: 15,color: Colors.red)),
                          SizedBox(height: 10,),
                          Text('Total Credit Hour:2'),
                          Text("Difficulty Level:Hard"),
                          Text("Total Chapter:3"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Basic Electric Engineering",
                            style: TextStyle(fontSize: 15,color: Colors.red),
                          ),
                          SizedBox(height: 10,),
                          Text('Total Credit Hour:4'),
                          Text("Difficulty Level:Hard"),
                          Text("Total Chapter:10"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('Extra Activities:',style: TextStyle(fontSize: 30,fontFamily: 'Splash'),),
            Text('1.Sports Week Gold Medal'),
            Text('2.Participated in Hackathon'),
          ],
        ),
      ),
    );
  }
}
