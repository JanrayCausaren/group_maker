import 'package:get_it/get_it.dart';
import 'package:group_maker/features/switch_theme/bloc/theme_mode_bloc.dart';

final getIt = GetIt.instance;

void injectDependencies() {
  // Register your dependencies here
  getIt.registerLazySingleton<ThemeModeBloc>(() => ThemeModeBloc());
}
