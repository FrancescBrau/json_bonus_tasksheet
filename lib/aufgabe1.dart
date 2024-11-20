import 'package:flutter/material.dart';
import 'package:json_bonus_tasksheet/apitest.dart';
import 'dart:convert';

import 'package:json_bonus_tasksheet/aufgabe2.dart';

class Aufgabe1 extends StatelessWidget {
  const Aufgabe1({super.key});

  @override
  Widget build(BuildContext context) {
    String aufgabe1 = '''{
      "restaurantId": "R101",
      "name": "Gourme Bistro",
      "rating": 4.8,
      "currentlyOpen": true
      }
      ''';

    Map<String, dynamic> decodedJson = jsonDecode(aufgabe1);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Aufgabe 1"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Restaurant ID: ${decodedJson['restaurantId']}"),
              Text("Name: ${decodedJson['name']}"),
              Text("Rating: ${decodedJson['rating']}"),
              Text("Geöffnet: ${decodedJson['currentlyOpen'] ? "JA" : "NEIN"}"),

              //Einrichtung einer Schaltfläche, um zu Aufgabe 2 zu gelangen

              //die neuen Schaltflächen sind in einer Reihe angeordnet, um auf die neuen Bildschirme zuzugreifen.

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Aufgabe2()),
                        );
                      },
                      child: const Text('zur Aufgabe2')),
                  const SizedBox(width: 16),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ApiTest1()),
                        );
                      },
                      child: const Text('zum API Test'))
                ],
              ),
            ],
          ),
        ));
  }
}
