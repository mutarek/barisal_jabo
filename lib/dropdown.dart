import 'package:dhakacity/datasrc/locationlist.dart';
import 'package:flutter/material.dart';

import 'airforinfo.dart';

class FlightSearchUI extends StatefulWidget {
  @override
  _FlightSearchUIState createState() => _FlightSearchUIState();
}

class _FlightSearchUIState extends State<FlightSearchUI> {

  String _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        // there are two text flight and search with different text styles
        title: RichText(
          text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 32),
              children: [
                // flight
                TextSpan(
                  text: "Flight",
                  // style: GoogleFonts.overpass(fontWeight: FontWeight.w200),
                ),
                // search
                TextSpan(
                  text: "Search",
                  //style: GoogleFonts.overpass(fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30)),
          child: DropdownButton<String>(
            onChanged: (value) {
              setState(() {
                _selectedColor = value;
              });
            },
            value: _selectedColor,
            underline: Container(),
            hint: Center(
                child: Text(
              'Kothy Theke',
              style: TextStyle(color: Colors.white),
            )),
            icon: Icon(
              Icons.arrow_downward,
              color: Colors.yellow,
            ),
            isExpanded: true,
            items: togo
                .map((e) => DropdownMenuItem(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          e,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      value: e,
                    ))
                .toList(),

            // Customize the selected item
            selectedItemBuilder: (BuildContext context) => togo
                .map((e) => Center(
                      child: Text(
                        e,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.amber,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
