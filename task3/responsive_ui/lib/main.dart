import 'package:flutter/material.dart';
import 'package:responsive_ui/list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 58, 93, 183),
        ),
      ),
      home: const MyHomePage(title: 'Responsive UI by Hasan Iqbal'),
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
  int num = 3;
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: const Color.fromARGB(255, 167, 216, 240),
        title: Text(widget.title),
      ),
      body: isPortrait ? const PortraitLayout() : LandscapeLayout(),
    );
  }
}

//portraitlayout
// class PortraitLayout extends StatelessWidget {
//   const PortraitLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // return Container();
//     return ListView.builder(
//       itemCount: 20,
//       itemBuilder: (context, index) => CustomListItem(index: index),
//     );
//   }
// }

// reusable CustomList

// class CustomListItem extends StatelessWidget {
//   const CustomListItem({super.key, required this.index});
//   final int index;
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
