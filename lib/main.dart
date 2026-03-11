import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:group_maker/core/routing/router.dart';
import 'package:group_maker/core/theme/brand_colors_theme.dart';
import 'package:group_maker/core/theme/brand_text_theme.dart';
import 'package:group_maker/dependencies/inject_dependencies.dart';
import 'package:group_maker/features/switch_theme/bloc/theme_mode_bloc.dart';
import 'package:group_maker/features/switch_theme/domain/theme_mode_enum.dart';
import 'package:janray_flutter_kit/janray_flutter_kit.dart';

void main() {
  injectDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightTheme = AppTheme.light(
      brandColor: Colors.blue,
      textTheme: BrandTextTheme.applyBrandFont(
        base: AppTextTheme.light,
        bodyFont: 'Inter',
        headingFont: 'Nunito',
      ),
    );

    final darkTheme = AppTheme.dark(
      textTheme: BrandTextTheme.applyBrandFont(
        base: AppTextTheme.light,
        bodyFont: 'Inter',
        headingFont: 'Nunito',
      ),
    );

    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => getIt<ThemeModeBloc>())],
      child: BlocBuilder<ThemeModeBloc, ThemeModeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,

            theme: lightTheme.copyWith(
              extensions: [
                ...lightTheme.extensions.values,
                BrandColorsTheme.light(),
              ],
            ),
            darkTheme: darkTheme.copyWith(
              extensions: [
                ...darkTheme.extensions.values,
                BrandColorsTheme.dark()],
            ),
            themeMode: state.themeMode == ThemeModeEnum.light
                ? ThemeMode.light
                : ThemeMode.dark,
          );
        },
      ),
    );
  }
}
