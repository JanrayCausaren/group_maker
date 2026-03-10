part of 'theme_mode_bloc.dart';

@freezed
abstract class ThemeModeState with _$ThemeModeState {
  const factory ThemeModeState({
    required ThemeModeEnum themeMode,
  }) = _ThemeModeState;

   factory ThemeModeState.initial() => const _ThemeModeState(
        themeMode: ThemeModeEnum.dark,
      );
}
