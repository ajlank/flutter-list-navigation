import 'package:flutter/material.dart';
import 'screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  final List<String> names = const [
    'Alice',
    'Bob',
    'Charlie',
    'Tom',
    'Eva',
    'Alfred',
    'Frank',
    'Grace',
    'Hannah'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Name List')),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          var name=names[index];
          return ListTile(
            title: Text(name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenTwo(name: name),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
