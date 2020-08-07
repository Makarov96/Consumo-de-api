part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable {}

class Empty extends UserState {
  @override
  List<Object> get props => [];
}

class Loading extends UserState {
  @override
  List<Object> get props => [];
}

class Loaded extends UserState {
  final List<User> user;
  Loaded({@required this.user});

  @override
  List<Object> get props => [this.user];
}
