import 'package:flutter/material.dart';
import 'screens/card_demo.dart';
import 'screens/listview_demo.dart';
import 'screens/gridview_count_demo.dart';
import 'screens/gridview_extent_demo.dart';
import 'screens/gridview_builder_demo.dart';
import 'screens/stack_demo.dart';
import 'screens/sliver_demo.dart';
import 'screens/dismissible_demo.dart';

void main() {
  runApp(const Week10App());
}

class Week10App extends StatelessWidget {
  const Week10App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Week 10 Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Week 10 Flutter Widgets")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const CardDemo())),
              child: const Text("Card Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ListViewDemo())),
              child: const Text("ListView & ListTile Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const GridViewCountDemo())),
              child: const Text("GridView.count Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const GridViewExtentDemo())),
              child: const Text("GridView.extent Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const GridViewBuilderDemo())),
              child: const Text("GridView.builder Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const StackDemo())),
              child: const Text("Stack Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const SliverDemo())),
              child: const Text("Sliver (CustomScrollView) Demo"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const DismissibleDemo())),
              child: const Text("Dismissible Demo"),
            ),
          ],
        ),
      ),
    );
  }
}
