import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(10, (index) => 'Task ${index + 1}');
    return Scaffold(
      appBar: AppBar(title: const Text("ListView & ListTile Demo")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: Text(items[index]),
            subtitle: const Text("This is a simple task list."),
          );
        },
      ),
    );
  }
}
