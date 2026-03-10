import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_mode_event.dart';
part 'theme_mode_state.dart';

class ThemeModeBloc extends Bloc<ThemeModeEvent, ThemeModeState> {
  ThemeModeBloc() : super(ThemeModeInitial()) {
    on<ThemeModeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
