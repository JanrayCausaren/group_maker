part of 'new_directory_bloc.dart';

/// Represents the status of the create directory form.
enum NewDirectoryStatus { initial, loading, success, failure }

@freezed
abstract class NewDirectoryState with _$NewDirectoryState {
  const factory NewDirectoryState({
    @Default(NewDirectoryStatus.initial) NewDirectoryStatus status,
    String? errorMessage,
  }) = _NewDirectoryState;
}
