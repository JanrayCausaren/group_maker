import 'package:flutter/material.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.brandColors.surface,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      appBar: AppBar(
        backgroundColor: context.brandColors.surface,
        title: Text("Janray", style: context.displaySmall),
      ),
      body:  Column(
        children: [
          Center(child: Text('Hello World!')),
          Text("Create New Classes", style: context.displaySmall),
        ],
      ),
    );
  }
}
