// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Profile(),
  ));
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int kingdomPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Profile of King'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.grey[350],
        ),
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => kingdomPoints += 1);
        },
        backgroundColor: Colors.grey[800],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 30.0,
          top: 40.0,
          right: 30.0,
          bottom: 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/lion.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              'King Hyper Gian',
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'KINGDOM POINTS',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              '$kingdomPoints',
              style: TextStyle(
                color: Colors.redAccent,
                letterSpacing: 2.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[350],
                  size: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'hypergian@king.com',
                  style: TextStyle(
                    color: Colors.redAccent,
                    letterSpacing: 2.0,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
