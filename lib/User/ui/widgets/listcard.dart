import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapi/User/bloc/userbloc.dart';
import 'package:restapi/User/model/user.dart';
import 'package:restapi/User/repostiroy/cloud_user_api.dart';
import 'package:restapi/User/ui/widgets/structurecard.dart';

class ListCard extends StatelessWidget {
   ListCard({Key key}) : super(key: key);
    UserBloc userBloc;


  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return FutureBuilder(
      future: userBloc.getUserList(),
      builder: (BuildContext context, AsyncSnapshot<UserModel> snapshot) {

        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
             return Center(
               child: CircularProgressIndicator(),
             );
          break;
          case ConnectionState.none:
             return Center(
               child: CircularProgressIndicator(),
             );
          break;

          case ConnectionState.done:
             return Center(
               child: userList(context, snapshot.data.data),
             );
          break;

          case ConnectionState.active:
             return Center(
               child: userList(context, snapshot.data.data),
             );
          break;

          default:
        }
      },
    );
  }


  Widget userList(context, List<User> listuser){

     double screenHeigth=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;
    return Container(

      margin: EdgeInsets.only(top:screenHeigth*0.4),
      height: screenHeigth*0.6,
      width: screenWidth,

      child: ListView.builder(
        itemCount: listuser.length,
        itemBuilder: (BuildContext context, int i){
          final usuario = listuser[i];

          return  FadeInLeft(
            delay: Duration(milliseconds: 100*i),
                      child: Center(
              child:StructureCard(userModel: User(email: usuario.email, avatar: usuario.avatar, firstName: usuario.firstName, lastName: usuario.lastName),)
            ),
          );

        }),
    );
  }
}

/*

 
 */