import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatefulWidget {

  const MenuButton({Key? key}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  String dropdownValue = "Low";
  Widget dropdown(){
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 15,
      style: TextStyle(color: Colors.black, fontSize: 25),
      underline: Container(
        height: 2,
        color: Colors.purple,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Low',
        'Medium',
        'High',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Button Example"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Text("Normal usage of button"),
           // SizedBox(height: 10,),
             dropdown(),
            //SizedBox(height: 10,),
            Text("Menu Button with scroll physics"),
            //SizedBox(height: 10,),
            dropdown(),
          //  SizedBox(height: 10,),
            Text("Menu button not crossing the edge"),
            dropdown(),
           // SizedBox(height: 10,),
            Text("Usage of menu button without showing the same selected items"),
           // SizedBox(height: 10,),
            dropdown(),



          ],
        ),


        );
      //dropdown()
  }
}
