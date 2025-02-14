import 'package:flutter/material.dart';
import 'package:to_do/pages/my_home_page.dart';
import 'package:to_do/pages/new_task.dart';
import 'package:to_do/pages/calendar.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black54),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        '/new_task' : (context) => const NewTask(),
        '/calendar' : (context) =>  const Calendar(),
      },
    );
  }
}

