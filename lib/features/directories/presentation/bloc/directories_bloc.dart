import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:group_maker/core/contracts/directories_repository.dart';
import 'package:group_maker/features/directories/domain/entities/directory.dart';

part 'directories_event.dart';
part 'directories_state.dart';
part 'directories_bloc.freezed.dart';

class DirectoriesBloc extends Bloc<DirectoriesEvent, DirectoriesState> {
  final DirectoriesRepository _repository;

  DirectoriesBloc({required DirectoriesRepository repository})
      : _repository = repository,
        super(const DirectoriesState()) {
    on<_Started>(_onStarted);
    on<_Deleted>(_onDeleted);
  }

  /// Loads all directories from the repository.
  Future<void> _onStarted(
    _Started event,
    Emitter<DirectoriesState> emit,
  ) async {
    emit(state.copyWith(status: DirectoriesStatus.loading));
    try {
      final directories = await _repository.getAllDirectories();
      emit(state.copyWith(
        status: DirectoriesStatus.success,
        directories: directories,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: DirectoriesStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  /// Deletes a directory and refreshes the list.
  Future<void> _onDeleted(
    _Deleted event,
    Emitter<DirectoriesState> emit,
  ) async {
    try {
      await _repository.deleteDirectory(event.id);
      final directories = await _repository.getAllDirectories();
      emit(state.copyWith(
        status: DirectoriesStatus.success,
        directories: directories,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: DirectoriesStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}