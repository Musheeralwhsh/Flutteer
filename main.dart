import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget buttonForm(String txtButton, Color txtColor, Color backgroundButton) {
    if (txtButton != '0') {
      return Container(
        child: RawMaterialButton(
          onPressed: () {},
          shape: CircleBorder(),
          fillColor: backgroundButton,
          padding: EdgeInsets.all(10),
          child: Text(
            txtButton,
            style: TextStyle(
              fontSize: 35,
              color: txtColor,
            ),
          ),
        ),
      );
    } else {
      return Container(
        child: RawMaterialButton(
          onPressed: () {},
          shape: StadiumBorder(),
          fillColor: backgroundButton,
          padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
          child: Text(
            txtButton,
            style: TextStyle(
              fontSize: 35,
              color: txtColor,
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '0',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 100,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buttonForm('AC', Colors.white, Colors.blue),
                buttonForm('+/-', Colors.white, Colors.blue),
                buttonForm('%', Colors.white, Colors.blue),
                buttonForm('/', Colors.blue, Colors.white),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buttonForm('7', Colors.white, Colors.blue),
                buttonForm('8', Colors.white, Colors.blue),
                buttonForm('9', Colors.white, Colors.blue),
                buttonForm('x', Colors.blue, Colors.white),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buttonForm('4', Colors.white, Colors.blue),
                buttonForm('5', Colors.white, Colors.blue),
                buttonForm('6', Colors.white, Colors.blue),
                buttonForm('-', Colors.blue, Colors.white),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buttonForm('1', Colors.white, Colors.blue),
                buttonForm('2', Colors.white, Colors.blue),
                buttonForm('3', Colors.white, Colors.blue),
                buttonForm('+', Colors.blue, Colors.white),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buttonForm('0', Colors.white, Colors.blue),
                buttonForm('.', Colors.white, Colors.blue),
                buttonForm('=', Colors.white, Colors.blue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
