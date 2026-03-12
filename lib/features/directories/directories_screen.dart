import 'package:flutter/material.dart';
import 'package:group_maker/core/components/component_container.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

class DirectoriesScreen extends StatelessWidget {
  const DirectoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: context.brandColors.primary,
        onPressed: () {},
        label: Row(
          children: [
            Text(
              "Create",
              style: context.titleMedium?.copyWith(
                fontWeight: const FontWeight(700),
              ),
            ),
            const SizedBox(width: 6),
            const Icon(Icons.add, color: Colors.white),
          ],
        ),
      ),
      backgroundColor: context.brandColors.surface,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: context.brandColors.surface,
              title: Text("", style: context.titleSmall),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Directories Screen",
                    style: context.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: ComponentContainer(
                    
                    child: Center(child: Text("Home Screen"))),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
