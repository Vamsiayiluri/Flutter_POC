import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'FinalScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              child: Text("push() → Second Screen"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SecondScreen()),
                );
              },
            ),

            ElevatedButton(
              child: Text("pushNamed() → Third Screen"),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),

            ElevatedButton(
              child: Text("pushReplacement() → Final Screen"),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => FinalScreen()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
