import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  var label = "Set state method";
  var col = Colors.purple;
  @override
  Widget build(BuildContext context) {
    // print("hi");

    /// This is a stateful widget to demonstrate the usage of setState method.
    ///
    /// It displays a yellow background with a column of widgets in the center.
    /// The column includes a colored box, a text label and an elevated button.
    ///
    /// The initial label is "Set state method" and the initial color is purple.
    /// When the button is pressed, the label is changed to "Usage of set state"
    /// and the color is changed to green.

    return Scaffold(
      appBar: AppBar(
        title: Text("Set state demo"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              color: col,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                label = "Usage of set state";
                col = Colors.green;
                setState(() {});
              },
              child: Text(
                "Change",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, minimumSize: Size(200, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
