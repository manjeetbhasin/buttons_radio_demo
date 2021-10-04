import 'package:flutter/material.dart';

class GroupedButton extends StatefulWidget {
  const GroupedButton({Key? key}) : super(key: key);

  @override
  _GroupedButtonState createState() => _GroupedButtonState();
}

class _GroupedButtonState extends State<GroupedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grouped Button Example"),
        ),
        body: Container(
          child: Stack(children: <Widget>[
            Positioned(
              child: Text(
                "Horizontal",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
              top: 10,
              right: 160,
            ),
            Positioned(
              child: Text("Shape Disabled"),
              top: 50,
              left: 50,
            ),
            Positioned(
              child: Text("Shape Enabled"),
              top: 50,
              right: 50,
            ),
            Positioned(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                    },
                    child: Text(
                      "Monday",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                     // onPrimary: Colors.indigo,
                      fixedSize: Size(180, 30),
                      side: BorderSide(color: Colors.blue, width: 1),

                    ),

                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child:
                        Text("Tuesday", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(180, 30),
                        side: BorderSide(color: Colors.blue, width: 1)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Wednesday",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(180, 30),
                        side: BorderSide(color: Colors.blue, width: 1)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child:
                        Text("Thursday", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(180, 30),
                        side: BorderSide(color: Colors.blue, width: 1)),
                  ),
                ],
              ),
              top: 70,
              left: 20,
            ),


        Positioned(
          child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    "Thursday",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(180, 30),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      side: BorderSide(color: Colors.blue, width: 1)),

                  ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    "Friday",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(180, 30),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      side: BorderSide(color: Colors.blue, width: 1)),

                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    "Saturday",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(180, 30),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      side: BorderSide(color: Colors.blue, width: 1)),

                ),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text(
                    "Sunday",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(180, 30),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      side: BorderSide(color: Colors.blue, width: 1)),




                ) ]),
          top: 70,right: 20,
        ),
            Positioned(
              child: Text(
                "Verticle",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
              top: 300,
              right: 170,
            ),
            Positioned(child: Text("Shape Disabled"),
            top:350,
              right:150 ,
            ),

            Positioned(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                  ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Monday",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    // onPrimary: Colors.indigo,
                    fixedSize: Size(180, 30),
                    side: BorderSide(color: Colors.blue, width: 1),

                  ),

                ),
                  ElevatedButton(
                    onPressed: () {},
                    child:
                    Text("Tuesday", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(180, 30),
                        side: BorderSide(color: Colors.blue, width: 1)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Wednesday",
                        style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(180, 30),
                        side: BorderSide(color: Colors.blue, width: 1)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child:
                    Text("Thursday", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(180, 30),
                        side: BorderSide(color: Colors.blue, width: 1)),
                  ),


               ] ),
              ),

            top:380,
              //right: 150

            ),
            Positioned(
              child: Text("Shape Enabled"),
              top: 440,
              right: 140,
            ),



            Positioned(
    child: SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
    children: [
      ElevatedButton(
        onPressed: () {
        },
        child: Text(
          "Thursday",
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            fixedSize: Size(180, 30),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            side: BorderSide(color: Colors.blue, width: 1)),

      ),
      ElevatedButton(
        onPressed: () {
        },
        child: Text(
          "Friday",
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            fixedSize: Size(180, 30),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            side: BorderSide(color: Colors.blue, width: 1)),

      ),
      ElevatedButton(
        onPressed: () {
        },
        child: Text(
          "Saturday",
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            fixedSize: Size(180, 30),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            side: BorderSide(color: Colors.blue, width: 1)),

      ),
      ElevatedButton(
        onPressed: () {
        },
        child: Text(
          "Sunday",
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            fixedSize: Size(180, 30),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            side: BorderSide(color: Colors.blue, width: 1)),

      ) ]),),
        top: 470,
    ),

            Positioned(
              child: FloatingActionButton.extended(onPressed: (){},
                icon: const Icon(Icons.radio_button_checked),
                  label: Text("Radio Button"),
                backgroundColor:Colors.indigo,

              ),
              top: 550,
              right: 10,
            ),

          ]),

        ));
  }
}
