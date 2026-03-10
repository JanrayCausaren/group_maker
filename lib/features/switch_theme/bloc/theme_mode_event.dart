part of 'theme_mode_bloc.dart';

@freezed
class ThemeModeEvent with _$ThemeModeEvent {
  const factory ThemeModeEvent.setToLightTheme() = _SetToLightTheme;
  const factory ThemeModeEvent.setToDarkTheme() = _SetToDarkTheme;
}