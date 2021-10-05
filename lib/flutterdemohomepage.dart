

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlutterDemo extends StatefulWidget {
  const FlutterDemo({Key? key}) : super(key: key);

  @override
  _FlutterDemoState createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Flutter Demo Home  Page"),
    ),
    body:Container(
          height: 750,
          width: 450,
          color: Colors.grey,
            child: Stack(
                children:[
                  Positioned(
                    child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Test Speed Dial FAB Example"),
                    ],
                ),
                    top: 300,
                    left: 120,
                  ),

              Positioned(
                child: FloatingActionButton(
                            tooltip: "Navigation",
                          onPressed: (){
                             // ScaffoldMessenger.of(context).showSnackBar(snackBar(context:Text("Navigation")));
                          },
                          child: const Icon(Icons.keyboard_arrow_up),
                            backgroundColor: Colors.black,
                          ),
                top: 590,
                right: 8,
              ),
          ]),
            ),
                  );
  }
}
