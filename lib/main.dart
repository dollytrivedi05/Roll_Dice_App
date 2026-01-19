import 'package:flutter/material.dart';
import 'package:first_app/gradiant_container.dart';


void main() {
  runApp(
    const MaterialApp(home: Scaffold(
      body: GradiantContainer(
        Color.fromARGB(255, 54, 8, 97),
        Color.fromARGB(255, 151, 63, 185))
        ),
        ),
  ); 
}

