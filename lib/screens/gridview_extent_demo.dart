import 'package:flutter/material.dart';

class GridViewExtentDemo extends StatelessWidget {
  const GridViewExtentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView.extent Demo")),
      body: GridView.extent(
        maxCrossAxisExtent: 120,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: List.generate(8, (index) {
          return Container(
            color: Colors.orange[100 * ((index % 8) + 1)],
            child: Center(
              child: Text("Box ${index + 1}", style: const TextStyle(fontSize: 16)),
            ),
          );
        }),
      ),
    );
  }
}
