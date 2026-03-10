import 'package:flutter/material.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

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