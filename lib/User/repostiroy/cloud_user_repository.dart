
import 'package:restapi/User/model/user.dart';
import 'package:restapi/User/repostiroy/cloud_user_api.dart';

class CloudUserRepository {

 final _cloudUserApi= CloudUserAPI();

  Future<UserModel> getUserList() => _cloudUserApi.getUserList();




}