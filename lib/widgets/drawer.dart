import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bdtravel.dart';

Widget drawer(BuildContext context) {
  return ListView(
    scrollDirection: Axis.vertical,
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(10),
        height: 150,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Card(
              elevation: 30,
              shadowColor: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.ac_unit,
                    size: 50,
                  ),
                  Text(
                    'Hello Users',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text('user@gmail.com'),
                ],
              ),
            )),
      ),
      Card(
        margin: EdgeInsets.only(left: 20, right: 20, top: 5),
        elevation: 10,
        shadowColor: Colors.black,
        child: ListTile(
          leading: Icon(
            Icons.confirmation_number,
            size: 30,
          ),
          title: Text(
            'All Booking',
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => bdtravel()));
          },
        ),
      ),
      Card(
        margin: EdgeInsets.only(left: 20, right: 20, top: 8),
        elevation: 10,
        shadowColor: Colors.black,
        child: ListTile(
          leading: Icon(
            Icons.developer_mode,
            size: 30,
          ),
          title: Text(
            'Devs',
            style: TextStyle(fontSize: 15),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => bdtravel()));
          },
        ),
      ),
      Card(
        margin: EdgeInsets.only(left: 20, right: 20, top: 8),
        elevation: 10,
        shadowColor: Colors.black,
        child: ListTile(
          leading: Icon(
            Icons.logout,
            size: 30,
          ),
          title: Text(
            'Logout',
            style: TextStyle(fontSize: 15),
          ),
          tileColor: Colors.deepOrange,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => bdtravel()));
          },
        ),
      ),
    ],
  );
}
