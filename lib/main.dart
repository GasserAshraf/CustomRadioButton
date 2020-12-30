import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              customRadioButton(Colors.red, 1),
              SizedBox(
                width: 20,
              ),
              customRadioButton(Colors.green, 2),
              SizedBox(
                width: 20,
              ),
              customRadioButton(Colors.yellow, 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget customRadioButton(Color color, int value) {
    return GestureDetector(
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: Colors.white,
          //  disabledColor: Colors.blue
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.016,
          width: MediaQuery.of(context).size.width * 0.035,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: Transform.scale(
            scale: 1.5,
            child: Radio(
                activeColor: color,
                value: value,
                groupValue: _groupValue,
                onChanged: (t) {
                  setState(() {
                    _groupValue = t;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
