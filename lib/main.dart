// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Marksheet App';

    return MaterialApp(
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
          ),
          body: CalculateMarks(),
        ));
  }
}

class CalculateMarks extends StatefulWidget {
  @override
  _CalculateMarksState createState() => _CalculateMarksState();
}

class _CalculateMarksState extends State<CalculateMarks> {
  TextEditingController engcontroller = TextEditingController();
  TextEditingController urducontroller = TextEditingController();
  TextEditingController mathcontroller = TextEditingController();
  TextEditingController compcontroller = TextEditingController();
  TextEditingController islcontroller = TextEditingController();
  TextEditingController phycontroller = TextEditingController();
  double obtained = 0;
  double total = 600;
  double percent = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Text("English Marks:"),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: engcontroller,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text("Urdu Marks:"),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: urducontroller,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Math Marks:"),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: mathcontroller,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text("Physics Marks:"),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: phycontroller,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text("Islamiat Marks:"),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: islcontroller,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text("Computer Marks:"),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  controller: compcontroller,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Generate Percentage"),
              onPressed: () {
                setState(() {
                  obtained = double.parse(engcontroller.text) +
                      double.parse(urducontroller.text) +
                      double.parse(mathcontroller.text) +
                      double.parse(islcontroller.text) +
                      double.parse(compcontroller.text) +
                      double.parse(phycontroller.text);
                  percent = (obtained / total) * 100;
                });
              },
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Secured Marks:",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              width: 60,
            ),
            Text(
              obtained.toString(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Percentage:",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              width: 60,
            ),
            Text(
              percent.toString(),
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if ((percent >= 90) && (percent <= 100))
              Text("Congratulation Your Grade is A+",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontStyle: FontStyle.italic))
            else if (percent >= 80 && percent < 90)
              Text("Excellent Your Grade is A",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontStyle: FontStyle.italic))
            else if (percent >= 70 && percent < 80)
              Text("Good Your Grade is B",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontStyle: FontStyle.italic))
            else if (percent >= 60 && percent < 70)
              Text("Your Grade is C",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontStyle: FontStyle.italic))
            else if (percent >= 50 && percent < 60)
              Text("Your Grade is D",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontStyle: FontStyle.italic))
            else
              Text(
                  "Sorry You are fail No Worry Every Failure is one step away from Success",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontStyle: FontStyle.italic))
          ],
        ),
      ],
    );
  }
}
