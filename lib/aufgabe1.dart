import 'package:flutter/material.dart';
import 'dart:convert';

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
            ],
          ),
        ));
  }
}
