part of 'directories_bloc.dart';

@freezed
class DirectoriesEvent with _$DirectoriesEvent {
   /// Triggered on screen load — fetches all directories.
  const factory DirectoriesEvent.started() = _Started;

  /// Triggered when user deletes a directory.
  const factory DirectoriesEvent.deleted(String id) = _Deleted;
}