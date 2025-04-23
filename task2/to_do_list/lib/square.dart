import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  // const Square({super.key});
  final String child;
  Square({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 100,
        color: Colors.blueGrey,
        child: Center(child: Text(child, style: TextStyle(fontSize: 30))),
      ),
    );
  }
}
