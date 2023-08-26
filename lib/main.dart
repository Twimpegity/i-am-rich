import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 240, 200, 255),
          title: const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "I'm RICH! "),
                WidgetSpan(
                  child: Icon(Icons.diamond_outlined),
                ),
                WidgetSpan(child: Icon(Icons.attach_money))
              ],
            ),
          ),
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    );
  }
}
