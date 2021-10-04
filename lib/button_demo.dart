import 'package:flutter/material.dart';
class ButtonDemo extends StatefulWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button & radio Demo"),
      ),
      body: Container(
        height: double.infinity,
        alignment: Alignment.topLeft,
        child: Row(children: [
          SizedBox(
            height: 5,
            width: 5,
          ),
          Container(
            height: 50,
            width: 100,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.red,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  )),
              onPressed: () {
                print("u have selected car");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.car_rental),
                  Text('Car'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
            width: 5,
          ),
          Container(
            height: 50,
            width: 120,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.grey,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  )),
              onPressed: () {
                print("u have selected transit");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_transit),
                  Text('transit'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
            width: 5,
          ),
          Container(
            height: 50,
            width: 80,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.grey,
              ),
              onPressed: () {
                print("u have selected bike");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
            width: 5,
          ),
          Container(
            height: 50,
            width: 80,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.grey,
              ),
              onPressed: () {
                print("u have selected car");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.car_rental),
                ],
              ),
            ),
          ),
        ]),
      ),
    ); }
}
