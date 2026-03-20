part of 'directories_bloc.dart';

/// Represents the status of the directories list screen.
enum DirectoriesStatus { initial, loading, success, failure }

@freezed
abstract class DirectoriesState with _$DirectoriesState {
  const factory DirectoriesState({
    @Default(DirectoriesStatus.initial) DirectoriesStatus status,
    @Default([]) List<Directory> directories,
    String? errorMessage,
  }) = _DirectoriesState;
   
}
