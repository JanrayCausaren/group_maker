import 'package:flutter/material.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.brandColors.surface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.brandColors.surface,
            title: Text("", style: context.titleSmall),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Hi Janray",
                  style: context.titleLarge?.copyWith(fontWeight: FontWeight.normal),
                ),
              ),
              
              Padding( 
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Start Creating your Groups",
                  style: context.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: context.brandColors.surface9,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: context.brandColors.surface8,
                      width: 1,
                    ),
                  ),

                  child: const Center(child: Text("Home Screen")),
                ),
              ),
              const SizedBox(height: 16),
            ]),
          ),
        ],
      ),
    );
  }
}
