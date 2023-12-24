import 'package:first_one/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          '7up',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 5, 22, 35),
      ),
      body: const GradientContainer(Color.fromARGB(255, 10, 30, 30),
          Color.fromARGB(255, 8, 40, 35), Color.fromARGB(255, 12, 50, 40)),
    ),
  ));
}
