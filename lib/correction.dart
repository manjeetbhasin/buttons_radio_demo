import 'package:flutter/material.dart';

class CorrectionClass extends StatefulWidget {
  final String title;

  const CorrectionClass({Key? key, required this.title}) : super(key: key);
  @override
  _CorrectionClassState createState() => _CorrectionClassState();
}

class _CorrectionClassState extends State<CorrectionClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VerticalBoxes(), // Draw Vertical Boxes
            HorizontalBoxes(), // Draw Horizontal Boxes
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalBoxes extends StatelessWidget {
  const HorizontalBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Horizontal",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        Text(
          "Shape Disabled",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 15),
              CustomButton(text: "Monday", selected: true),
              SizedBox(width: 15),
              CustomButton(text: "Tuesday", selected: true),
              SizedBox(width: 15),
              CustomButton(text: "Wednesday", selected: false),
              SizedBox(width: 15),
              CustomButton(text: "Thursday", selected: true),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Shape Disabled",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 15),
              CustomButtonShape(text: "Monday", selected: false),
              SizedBox(width: 15),
              CustomButtonShape(text: "Tuesday", selected: true),
              SizedBox(width: 15),
              CustomButtonShape(text: "Wednesday", selected: false),
              SizedBox(width: 15),
              CustomButtonShape(text: "Thursday", selected: true),
            ],
          ),
        ),
      ],
    );
  }
}

class VerticalBoxes extends StatelessWidget {
  const VerticalBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Vertical",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "Shape Disabled",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15),
                CustomButton(text: "Monday", selected: false),
                SizedBox(height: 15),
                CustomButton(text: "Tuesday", selected: true),
                SizedBox(height: 15),
                CustomButton(text: "Wednesday", selected: false),
                SizedBox(height: 15),
                CustomButton(text: "Thursday", selected: true),
              ],
            ),
            Column(
              children: [
                Text(
                  "Shape Disabled",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 15),
                CustomButtonShape(text: "Monday", selected: false),
                SizedBox(height: 15),
                CustomButtonShape(text: "Tuesday", selected: true),
                SizedBox(height: 15),
                CustomButtonShape(text: "Wednesday", selected: false),
                SizedBox(height: 15),
                CustomButtonShape(text: "Thursday", selected: true),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CustomButton extends StatefulWidget {
  final String text;
  final bool selected;
  CustomButton({
    required this.text,
    required this.selected,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late bool _isSelected = widget.selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: _isSelected ? Colors.blue : Colors.transparent,
            border: _isSelected
                ? null
                : Border.all(
                    color: Colors.blue,
                  )),
        width: MediaQuery.of(context).size.width / 2.2,
        height: 50,
        child: _isSelected
            ? Center(
                child: Text(
                  widget.text,
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Center(
                child: Text(
                  widget.text,
                  style: TextStyle(color: Colors.black),
                ),
              ),
      ),
    );
  }
}

class CustomButtonShape extends StatefulWidget {
  final String text;
  final bool selected;
  CustomButtonShape({
    required this.text,
    required this.selected,
  });

  @override
  _CustomButtonShapeState createState() => _CustomButtonShapeState();
}

class _CustomButtonShapeState extends State<CustomButtonShape> {
  late bool _isSelected = widget.selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.decelerate,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: _isSelected ? Colors.blue : Colors.transparent,
            border: _isSelected
                ? null
                : Border.all(
                    color: Colors.blue,
                  )),
        width: MediaQuery.of(context).size.width / 2.2,
        height: 50,
        child: _isSelected
            ? Center(
                child: Text(
                  widget.text,
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Center(
                child: Text(
                  widget.text,
                  style: TextStyle(color: Colors.black),
                ),
              ),
      ),
    );
  }
}
