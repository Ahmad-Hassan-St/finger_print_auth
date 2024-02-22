
import 'package:flutter/material.dart';

import 'finger_print_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Finger Print"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(32),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Home',
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 48),
            buildLogoutButton(context)
          ],
        ),
      ),
    ),
  );

  Widget buildLogoutButton(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
    ),
    child: const Text(
      'Logout',
      style: TextStyle(fontSize: 20),
    ),
    onPressed: () => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => FingerprintPage()),
    ),
  );
}