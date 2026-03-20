import 'package:get_it/get_it.dart';
import 'package:group_maker/core/contracts/directories_repository.dart';
import 'package:group_maker/features/directories/data/repository/directories_repository_impl.dart';
import 'package:group_maker/features/directories/data/services/directories_hive_service.dart';
import 'package:group_maker/features/directories/presentation/bloc/directories_bloc.dart';
import 'package:group_maker/features/directories/presentation/bloc/new_directory_bloc.dart';
import 'package:group_maker/features/switch_theme/bloc/theme_mode_bloc.dart';

final getIt = GetIt.instance;

void injectDependencies() {
  // Theme
  getIt.registerLazySingleton<ThemeModeBloc>(() => ThemeModeBloc());

  // Directories — data layer
  getIt.registerLazySingleton<DirectoriesHiveService>(
    () => DirectoriesHiveService(),
  );
  getIt.registerLazySingleton<DirectoriesRepository>(
    () => DirectoriesRepositoryImpl(
      hiveService: getIt<DirectoriesHiveService>(),
    ),
  );

   // Directories — blocs (factory so each screen gets a fresh instance)
  getIt.registerFactory<DirectoriesBloc>(
    () => DirectoriesBloc(repository: getIt<DirectoriesRepository>()),
  );
  getIt.registerFactory<NewDirectoryBloc>(
    () => NewDirectoryBloc(repository: getIt<DirectoriesRepository>()),
  );
}
