import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body: Center(
        child: ElevatedButton(
          child: Text("popAndPushNamed() → Final Screen"),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/final');
          },
        ),
      ),
    );
  }
}