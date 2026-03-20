part of 'new_directory_bloc.dart';

@freezed
abstract class NewDirectoryEvent with _$NewDirectoryEvent {
  /// Triggered when the user submits the create directory form.
  const factory NewDirectoryEvent.submitted({
    required String title,
    String? description,
    required DirectoryType directoryType,
  }) = _Submitted;
}