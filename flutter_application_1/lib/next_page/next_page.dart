import 'package:flutter/material.dart';
// import '../main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});
  final String title;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          color: Colors.cyanAccent,
          child: Text('Here is the second page'),
        ),
      ),
    );
  }
}
