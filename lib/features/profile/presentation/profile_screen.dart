import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_maker/features/switch_theme/bloc/theme_mode_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ProfileScreen')),
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.read<ThemeModeBloc>().add(const ThemeModeEvent.setToLightTheme());
                },
                child: Container(width: 100, height: 100, color: Colors.blue)),
              GestureDetector(
                onTap: () {
                  context.read<ThemeModeBloc>().add(const ThemeModeEvent.setToDarkTheme());
                },
                child: Container(width: 100, height: 100, color: Colors.black)),
              ],
          ),
        ],
      ),
    );
  }
}

     