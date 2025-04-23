import 'package:flutter/material.dart';
import 'package:to_do_list/square.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'TO DO LIST'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _post = [
    'Go to gym',
    'Have Meeting',
    'Lunch at 3:00',
    'Go to hospital',
    'Hi tea with friends',
    'Attend valima',
    'Dinner With Family',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        itemCount: _post.length,
        itemBuilder: (context, index) {
          return Square(child: _post[index]);
        },
      ),
    );
  }
}
