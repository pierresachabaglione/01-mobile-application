import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A0341),
      appBar: AppBar(title: Text("looking for sensors")),
      body: Center(
        child: Text(
          "welcome in the sensors page !",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
