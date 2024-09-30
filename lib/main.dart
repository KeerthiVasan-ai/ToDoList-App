import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(const ToDoAppScreen());
}

class ToDoAppScreen extends StatefulWidget {
  const ToDoAppScreen({super.key});

  @override
  State<ToDoAppScreen> createState() => _ToDoAppScreenState();
}

class _ToDoAppScreenState extends State<ToDoAppScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      title: "ToDo List App",
    );
  }
}



