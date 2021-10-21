import 'package:flutter/material.dart';

import 'bdtravel.dart';
import 'widgets/drawer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstPage(),
  ));Banner(
          message: "ALPHA",
          location: BannerLocation.topEnd,
          color: Colors.red,  
          ),
}

class FirstPage extends StatefulWidget {
  FState createState() => FState();
}

class FState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        child: drawer(context),
      ),
      appBar: AppBar(
        title: Text('বরিশাল যাবো'),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Card(
                elevation: 20,
                shadowColor: Colors.green,
                child: Image.network(
                  'http://traveleon.com/wp-content/uploads/2016/02/MV-Sundarban-11-Launch-Cabin-Photo.jpg',
                  height: 180.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            ///first container
            Container(
              margin: EdgeInsets.all(1),
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => bdtravel()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(3),
                        height: 160,
                        child: Card(
                            shadowColor: Colors.blue,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.green, width: 1)),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 3,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Card(
                                      elevation: 20,
                                      shadowColor: Colors.red,
                                      color: Colors.blue,
                                      child: Image.network(
                                        'https://contactnumberhub.com/wp-content/uploads/2019/06/MV-Sundarban-launch.jpg',
                                        height: 200.0,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                      child: Text(
                                    'সুন্দরবন',
                                    style: TextStyle(fontSize: 20),
                                  )),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      height: 160,
                      child: Card(
                          shadowColor: Colors.blue,
                          elevation: 10,
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.green, width: 1)),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Card(
                                    elevation: 20,
                                    shadowColor: Colors.red,
                                    color: Colors.blue,
                                    child: Image.network(
                                      'https://mvmanami.com/wp-content/uploads/2019/07/Manami-pic1-1-300x199.jpg',
                                      height: 200.0,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                    child: Text(
                                  'মানামি ',
                                  style: TextStyle(fontSize: 20),
                                )),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),

//second container

            Container(
              margin: EdgeInsets.all(1),
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      height: 160,
                      child: Card(
                          shadowColor: Colors.blue,
                          elevation: 10,
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.green, width: 1)),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Card(
                                    elevation: 20,
                                    shadowColor: Colors.red,
                                    color: Colors.blue,
                                    child: Image.network(
                                      'https://i.ytimg.com/vi/P-nvvXo3lU8/maxresdefault.jpg',
                                      height: 200.0,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                    child: Text(
                                  'পারাবত',
                                  style: TextStyle(fontSize: 20),
                                )),
                              ),
                            ],
                          )),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      height: 160,
                      child: Card(
                          shadowColor: Colors.blue,
                          elevation: 10,
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.green, width: 1)),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Card(
                                    elevation: 20,
                                    shadowColor: Colors.red,
                                    color: Colors.blue,
                                    child: Image.network(
                                      'https://wikiofinfo.com/wp-content/uploads/Surovi-Launch-2021.jpg',
                                      height: 200.0,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                    child: Text(
                                  'সুরভী ',
                                  style: TextStyle(fontSize: 20),
                                )),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),

//closing brackets
          ],
        ),
      ),
    );
  }
}
