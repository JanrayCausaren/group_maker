part of 'new_directory_bloc.dart';

@freezed
class NewDirectoryEvent with _$NewDirectoryEvent {
  const factory NewDirectoryEvent.started() = _Started;
}