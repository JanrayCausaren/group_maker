import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_maker/core/contracts/directories_repository.dart';
import 'package:group_maker/features/directories/domain/entities/directory.dart';
import 'package:group_maker/features/directories/presentation/create_directory_screen.dart';
import 'package:uuid/uuid.dart';

part 'new_directory_event.dart';
part 'new_directory_state.dart';
part 'new_directory_bloc.freezed.dart';



class NewDirectoryBloc extends Bloc<NewDirectoryEvent, NewDirectoryState> {
  final DirectoriesRepository _repository;

  NewDirectoryBloc({required DirectoriesRepository repository})
      : _repository = repository,
        super(const NewDirectoryState()) {
    on<_Submitted>(_onSubmitted);
  }

  /// Saves the new directory to local storage.
  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<NewDirectoryState> emit,
  ) async {
    emit(state.copyWith(status: NewDirectoryStatus.loading));
    try {
      final directory = Directory(
        id: const Uuid().v4(),
        title: event.title,
        description: event.description,
        directoryType: event.directoryType.name,
      );
      await _repository.saveDirectory(directory);
      emit(state.copyWith(status: NewDirectoryStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: NewDirectoryStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}