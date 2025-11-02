import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Demo")),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200, height: 200, color: Colors.teal),
            Container(width: 150, height: 150, color: Colors.orange),
            const Text("Overlapping Widgets", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
