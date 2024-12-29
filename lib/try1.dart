import 'package:flutter/material.dart';

class Try1 extends StatefulWidget {
  const Try1({super.key});

  @override
  State<Try1> createState() => _Try1State();
}

class _Try1State extends State<Try1> {
  Future<bool> myfunction() async {
    await Future.delayed(
      Duration(seconds: 3),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Futurebuilder",
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red,
        child: Center(
          child: FutureBuilder(
            future: myfunction(),
            builder: (context, snapshot) {
              // if (snapshot.connectionState == ConnectionState.waiting)
              //   return CircularProgressIndicator();
              // else
              if (snapshot.hasData)
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                  ),
                );
              else
                return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
