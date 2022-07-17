import 'package:flutter/material.dart';
class GridPage extends StatefulWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  var _icons=[Icons.abc_sharp,Icons.account_circle,Icons.pageview,Icons.access_alarm_outlined];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 5,
        children: List.generate(_icons.length, (index) {
          return Center(
            child: Column(

              children: [
                Text('Count'),
                Icon(
                  _icons[index],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
