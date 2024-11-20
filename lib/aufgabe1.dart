import 'package:flutter/material.dart';
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

              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Aufgabe2()),
                    );
                  },
                  child: const Text('Zur Aufgabe2')),
            ],
          ),
        ));
  }
}
