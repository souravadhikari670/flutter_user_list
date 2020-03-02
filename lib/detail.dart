import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main.dart';

class DetailPage extends StatelessWidget {

  final User user;
  DetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.pink,
                child: Text(
                    user.name.substring(0,1),
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                ),
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
                style: TextStyle(
                  letterSpacing: 2.0
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                user.name,
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            Divider(
              height: 30.0,
              color: Colors.grey,
            ),
            Text(
              'USERNAME',
              style: TextStyle(
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              user.username,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey,
            ),
            Text(
              'EMAIL',
              style: TextStyle(
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              user.email,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey,
            ),
            Text(
              'PHONE',
              style: TextStyle(
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              user.phone,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 30.0,
              color: Colors.grey,
            ),
            Text(
              'WEBSITE',
              style: TextStyle(
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              user.website,
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ],
        ),

      ),
    );
  }
}
