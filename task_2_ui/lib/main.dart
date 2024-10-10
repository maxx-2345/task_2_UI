import "package:flutter/material.dart";

import "package:task_2_ui/widgets/homescree.dart";

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      home:const HomeScreen(),
    );
  }
}
