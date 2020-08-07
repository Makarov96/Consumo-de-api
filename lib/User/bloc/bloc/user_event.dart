part of 'user_bloc.dart';

@immutable
abstract class UserEvent extends Equatable {}

class GetUserListLoading extends UserEvent {
  @override
  List<Object> get props => [];
}

class GetUserListLoaded extends UserEvent {
  @override
  List<Object> get props => [];
}
