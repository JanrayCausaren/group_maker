import 'package:flutter/material.dart';
import 'package:group_maker/core/routing/router.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.light(brandColor: Colors.blue),
      darkTheme: AppTheme.dark(),
      themeMode: .system,
    );
  }
}


