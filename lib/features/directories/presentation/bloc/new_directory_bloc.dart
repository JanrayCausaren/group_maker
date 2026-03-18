import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_directory_event.dart';
part 'new_directory_state.dart';
part 'new_directory_bloc.freezed.dart';

class NewDirectoryBloc extends Bloc<NewDirectoryEvent, NewDirectoryState> {
  NewDirectoryBloc() : super(_Initial()) {
    on<NewDirectoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
