
import 'package:restapi/User/model/user.dart';
import 'package:http/http.dart' as http;

class CloudUserAPI {

  Future<UserModel> getUserList() async{
     final resp = await http.get('https://reqres.in/api/users');
     return userModelFromJson(resp.body);
  }
  
}