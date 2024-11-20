import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiTest1 extends StatefulWidget {
  const ApiTest1({super.key});

  @override
  ApiTest1State createState() => ApiTest1State();
}

class ApiTest1State extends State<ApiTest1> {
  List<dynamic> users = [];
  bool isLoading = true;

  Future<void> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      setState(() {
        users = jsonDecode(response.body);
      });
    } else {
      throw Exception('Error');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API test'),
      ),
      body: users.isEmpty
          ? const Center(child: Text("Bitte, Warten"))
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                var user = users[index];
                return ListTile(
                  title: Text(user['name']),
                  subtitle: Text(user['email']),
                );
              },
            ),
    );
  }
}
