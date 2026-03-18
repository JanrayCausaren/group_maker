part of 'directories_bloc.dart';

@freezed
abstract class DirectoriesState with _$DirectoriesState {
  const factory DirectoriesState({
    @Default([]) List<Directory> directories
  }) = _DirectoriesState;
   
}
