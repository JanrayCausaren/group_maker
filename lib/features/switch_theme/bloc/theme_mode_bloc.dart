import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_maker/features/switch_theme/domain/theme_mode_enum.dart';

part 'theme_mode_event.dart';
part 'theme_mode_state.dart';
part 'theme_mode_bloc.freezed.dart';

class ThemeModeBloc extends Bloc<ThemeModeEvent, ThemeModeState> {
  ThemeModeBloc() : super(ThemeModeState.initial()) {
    on<_SetToLightTheme>((event, emit) {
      emit(state.copyWith(themeMode: ThemeModeEnum.light));
    });
    on<_SetToDarkTheme>((event, emit) {
      emit(state.copyWith(themeMode: ThemeModeEnum.dark));
    });
    // Add more event handlers as needed
  }
}
