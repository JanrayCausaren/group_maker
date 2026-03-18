import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_maker/features/directories/domain/entities/directory.dart';

part 'directories_event.dart';
part 'directories_state.dart';
part 'directories_bloc.freezed.dart';

class DirectoriesBloc extends Bloc<DirectoriesEvent, DirectoriesState> {
  DirectoriesBloc() : super(const DirectoriesState()) {
    on<DirectoriesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
