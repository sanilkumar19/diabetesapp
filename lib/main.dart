// Diabetes App
// Author: Sharan Anil Kumar
// Last updated date: 20 March 2021

import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new FirstRoute());
  }
}

//first home page
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Diabetes App')),
      ),
      body: SafeArea(
        child: new ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            // const Placeholder(
            //   fallbackWidth: 100.0,
            //   fallbackHeight: 50.0,
            // ),
            new GridView.count(
              shrinkWrap: true,
              primary: true,
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 10,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                  child: Ink.image(
                    image: AssetImage('images/img1.png'),
                    // fit: BoxFit.cover,
                    width: 110,
                    height: 110,
                  ),
                ),
                Image.asset('images/img2.png'),
                Image.asset('images/img3.png'),
                Image.asset('images/img4.png'),
                Image.asset('images/img5.png'),
                Image.asset('images/img6.png'),
                Image.asset('images/img7.png'),
                Image.asset('images/img8.png'),
                Image.asset('images/img9.png'),
                Image.asset('images/img10.png'),
                Image.asset('images/img11.png'),
                Image.asset('images/img12.png'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.rate_review),
            title: new Text('Logbook'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.trending_up),
            title: new Text('Statistics'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More'),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  @override
  SecondRouteState createState() {
    return new SecondRouteState();
  }
}

//Second screen(glucose and carbs)
class SecondRouteState extends State<SecondRoute> {
  var selectOption = "";
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    final FocusNode textField = new FocusNode();
    // ignore: non_constant_identifier_names
    final FocusNode FastingButton = new FocusNode();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            //indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
                //borderRadius: BorderRadius(50), // Creates border
                color: Colors.blueGrey),
            tabs: [
              Tab(text: "Glucose"),
              Tab(text: "Carbs"),
              Tab(text: "History"),
            ],
          ),
          title: Center(child: Text('Diabetes App')),
        ),
        body: TabBarView(
          children: [
            new ListView(shrinkWrap: true, children: <Widget>[
              Text(
                "$selectOption",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 25),
              ),
              new TextField(
                focusNode: textField,
                controller: myController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Choose time period and input glucose level'),
              ),
              new GridView.count(
                shrinkWrap: true,
                primary: true,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                childAspectRatio: 1.8,
                crossAxisSpacing: 1,
                children: <Widget>[
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "Fasting";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'Fasting',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "Before Breakfast";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'Before Breakfast',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "After Breakfast";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'After Breakfast',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "Before Lunch";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'Before Lunch',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "After lunch";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'After lunch',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "Before Dinner";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'Before Dinner',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "After Dinner";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'After Dinner',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  RaisedButton(
                    focusNode: FastingButton,
                    onPressed: () async {
                      setState(() {
                        selectOption = "Before Bed";
                      });
                      // FastingButton.unfocus();
                      textField.requestFocus();
                    },
                    child: Text(
                      'Before Bed',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )
            ]),
            Icon(Icons.directions_car),
            Icon(Icons.directions_car),
          ],
        ),
      ),
    );
  }
}
