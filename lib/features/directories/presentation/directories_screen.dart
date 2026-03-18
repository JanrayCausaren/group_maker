import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:group_maker/core/components/component_container.dart';
import 'package:group_maker/core/routing/routes.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

class DirectoriesScreen extends StatelessWidget {
  const DirectoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: context.brandColors.primary,
        onPressed: () {
          context.push(AppRoutes.createDirectory);
        },
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
                    "Directories",
                    style: context.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: .stretch,
                  children: [_item(context), 
                  const SizedBox(height: 16),
                  _item(context),
                  const SizedBox(height: 16),
                   _item(context)],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _item(BuildContext context) {
    return const ItemDirectory();
  }
}

class ItemDirectory extends StatelessWidget {
  const ItemDirectory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: (){
          context.push(AppRoutes.directoriesDetailsHelper("23"));
        },
        child: ComponentContainer(
          paddingH: 16,
          paddingV: 16,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              const Icon(Icons.book_outlined, color: Colors.blue),
              const SizedBox(height: 10),
              Text(
                "Section 3 - BSIT",
                style: context.headlineSmall?.copyWith(
                  fontWeight: const FontWeight(700),
                ),
              ),
              const SizedBox(height: 10),
              Text("10 members", style: context.labelLarge?.copyWith(
                color: Colors.white38
              )),
            ],
          ),
        ),
      ),
    );
  }
}
