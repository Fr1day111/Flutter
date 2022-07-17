import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  var profileName;

  ProfilePage(this.profileName);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 150,
              height: 100,
              child: Column(
                children: [
                  Text(
                    "Hello there!!",
                    style: TextStyle(fontSize: 25, fontFamily: 'Splash'),
                  ),
                  Text(
                    widget.profileName,
                    style: TextStyle(fontSize: 25, fontFamily: 'Finlandica'),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {

                print('Clicked');
              },
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  'Assets/Photo/photo.jpg',
                ),
              ),
            ),
            Image.asset(
              'Assets/Photo/photo.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fitHeight,
            )
          ],
        ),
      ),
    );
  }
}
