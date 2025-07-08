import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text("pop() Go Back to Home"),
          onPressed: () {
            Navigator.pop(context); // Go back
          },
        ),
      ),
    );
  }
}