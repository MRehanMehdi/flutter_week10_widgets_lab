import 'package:flutter/material.dart';

class DismissibleDemo extends StatefulWidget {
  const DismissibleDemo({super.key});

  @override
  State<DismissibleDemo> createState() => _DismissibleDemoState();
}

class _DismissibleDemoState extends State<DismissibleDemo> {
  final List<String> items = List.generate(6, (index) => "Swipe Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dismissible Demo")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item),
            background: Container(color: Colors.redAccent),
            onDismissed: (direction) {
              setState(() => items.removeAt(index));
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('$item dismissed')));
            },
            child: ListTile(
              title: Text(item),
              leading: const Icon(Icons.swipe),
              tileColor: Colors.grey[200],
            ),
          );
        },
      ),
    );
  }
}
