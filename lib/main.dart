import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:https_evaluation/UserModel.dart';
import 'package:https_evaluation/userDetails.dart';

void main() {
  runApp(const MainApp());
}

List<User> users = [];

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isLoading = true; // Added loading state

  @override
  void initState() {
    super.initState();
    loadDetails();
  }

  loadDetails() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        users = List<User>.from(jsonDecode(response.body).map((x) =>
            User.fromJson(x))); // Parse JSON response into a list of users
        isLoading = false;
      });
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User '),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => userDetails(users: users[index]),
                        )),
                    title: Text(user.name),
                    subtitle: Text(user.email),
                  );
                },
              ),
      ),
    );
  }
}
