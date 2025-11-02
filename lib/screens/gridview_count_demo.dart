import 'package:flutter/material.dart';

class GridViewCountDemo extends StatelessWidget {
  const GridViewCountDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView.count Demo")),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        padding: const EdgeInsets.all(10),
        children: List.generate(9, (index) {
          return Container(
            color: Colors.teal[100 * ((index % 8) + 1)],
            child: Center(
              child: Text("Item ${index + 1}", style: const TextStyle(fontSize: 16)),
            ),
          );
        }),
      ),
    );
  }
}
