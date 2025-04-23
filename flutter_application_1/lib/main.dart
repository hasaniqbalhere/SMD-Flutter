import 'package:flutter/material.dart';
import 'next_page/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Page1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 58, 123, 183),
        ),
      ),
      home: const Firstpage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Firstpage extends StatefulWidget {
  const Firstpage({super.key, required this.title});
  final String title;
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String buttonName = 'Click for next page';
  String buttonName1 = 'Hasan';
  int currentIndex = 0;
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child:
            currentIndex == 0
                ? Container(
                  color: const Color.fromARGB(255, 189, 217, 220),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonName = 'Clicked';
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder:
                                  (BuildContext context) => const SecondPage(
                                    title: 'Flutter Second Page',
                                  ),
                            ),
                          );
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonName1 = 'Iqbal';
                          });
                        },
                        child: Text(buttonName1),
                      ),
                    ],
                  ),
                )
                : GestureDetector(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child:
                      isClicked
                          ? Image.asset('images/1.png')
                          : Image.asset('images/2.png'),
                ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'Alarm',
            icon: Icon(Icons.access_alarm_sharp),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
