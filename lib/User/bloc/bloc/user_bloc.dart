import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:restapi/User/model/user.dart';
import 'package:restapi/User/repostiroy/cloud_user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(Loading());

  final _cloudUserRepository = CloudUserRepository();
  Future<UserModel> getUserList() => _cloudUserRepository.getUserList();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is GetUserListLoading) {
      yield Loading();
    } else if (event is GetUserListLoaded) {
      final userList = await _cloudUserRepository.getUserList();
      yield Loaded(user: userList.data);
    }
  }
}
