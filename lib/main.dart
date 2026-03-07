import 'package:flutter/material.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light(brandColor: Colors.blue),
      darkTheme: AppTheme.dark(),
      themeMode: .system,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      appBar: AppBar(
        backgroundColor: context.colors.success,
        title: Text("Janray", style: context.displaySmall)),
      body: const Column(children: [Center(child: Text('Hello World!'))]),
    );
  }
}
