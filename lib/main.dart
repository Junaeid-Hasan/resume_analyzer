import 'package:flutter/material.dart';
import 'package:resume_analyzer/Components/home_screen.dart';
import 'package:resume_analyzer/Widgets/custom_container.dart';
import 'Components/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home:HomeScreen(),
    );
  }
}

