import 'package:flutter/material.dart';
import 'package:json_bonus_tasksheet/aufgabe1.dart';
import 'package:json_bonus_tasksheet/aufgabe2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

//Änderungen für Ausgabe 2

//Routing der Bildschirme Aufgabe 1 und Aufgabe 2

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/1',
      routes: {
        '/1': (context) => const Aufgabe1(),
        '/2': (context) => const Aufgabe2(),
      },
    );
  }
}
