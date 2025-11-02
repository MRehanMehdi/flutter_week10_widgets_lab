import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Demo")),
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.person, size: 60, color: Colors.teal),
                SizedBox(height: 10),
                Text("Name: Muhammad Rehan Mehdi",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Subject: MAD Project Week 10"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
