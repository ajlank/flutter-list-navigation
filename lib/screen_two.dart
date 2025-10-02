import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;

  const ScreenTwo({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Name Details')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.person,
              size: 80,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
