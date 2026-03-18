part of 'directories_bloc.dart';

@freezed
class DirectoriesEvent with _$DirectoriesEvent {
  const factory DirectoriesEvent.started() = _Started;
}