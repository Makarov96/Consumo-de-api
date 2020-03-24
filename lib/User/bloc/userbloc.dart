
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapi/User/model/user.dart';
import 'package:restapi/User/repostiroy/cloud_user_repository.dart';

class UserBloc extends Bloc {
  @override
  
  final _cloudUserRepository = CloudUserRepository();

  Future<UserModel> getUserList() => _cloudUserRepository.getUserList();




  get initialState => null;

  @override
  Stream mapEventToState(event) {
    // TODO: implement mapEventToState
    return null;
  }
  
}