import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:json_bonus_tasksheet/aufgabe1.dart';

class Aufgabe2 extends StatelessWidget {
  const Aufgabe2({super.key});

  @override
  Widget build(BuildContext context) {
    String aufgabe2 = '''{
       "city": {
      "name": "Springfield",
      "latitudeLongitude": "38.789304, -77.187203"
    },
    "temperature": 23,
    "humidity": 50,
    "forecast": [
      "Sunny",
      "Cloudy",
      "Rain"
    ]

    }''';

    Map<String, dynamic> decodedJson = jsonDecode(aufgabe2);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Aufgabe 2"),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("city: ${decodedJson['city']['name']}"),
              Text("Koordinaten: ${decodedJson['city']['latitudeLongitude']}"),
              Text("Temperature:${decodedJson['temperature']}"),
              Text("Luftfeuchtigkeit: ${decodedJson['humidity']}"),
              Text("Wetterprognose: ${decodedJson['forecast'][2]}"),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Aufgabe1()),
                    );
                  },
                  child: const Text('Zur Aufgabe1')),
            ],
          ),
        ));
  }
}
