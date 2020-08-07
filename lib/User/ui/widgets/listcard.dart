import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapi/User/bloc/bloc/user_bloc.dart';

import 'package:restapi/User/model/user.dart';
import 'package:restapi/User/ui/widgets/structurecard.dart';

class ListCard extends StatelessWidget {
  final List<User> users;
  ListCard({Key key, @required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return userList(context, this.users);
  }

  Widget userList(context, List<User> listuser) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: screenHeigth * 0.4),
      height: screenHeigth * 0.6,
      width: screenWidth,
      child: RefreshIndicator(
        notificationPredicate: (notification) {},
        color: Colors.white,
        backgroundColor: Colors.red,
        onRefresh: BlocProvider.of<UserBloc>(context).getUserList,
        child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: listuser.length,
            itemBuilder: (BuildContext context, int i) {
              final usuario = listuser[i];
              return Center(
                child: StructureCard(
                  userModel: User(
                      email: usuario.email,
                      avatar: usuario.avatar,
                      firstName: usuario.firstName,
                      lastName: usuario.lastName),
                ),
              );
            }),
      ),
    );
  }
}
