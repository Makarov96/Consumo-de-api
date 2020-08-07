import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapi/User/bloc/bloc/user_bloc.dart';
import 'package:restapi/User/ui/widgets/header.dart';
import 'package:restapi/User/ui/widgets/listcard.dart';
import 'package:restapi/widgets/backgroundcolor.dart';

class UserHome extends StatelessWidget {
  const UserHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  BlocProvider<UserBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => UserBloc(),
      child: Stack(children: <Widget>[
        BackgrounColor(height: null),

        BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            BlocProvider.of<UserBloc>(context).add(GetUserListLoaded());
            if (state is Loading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is Loaded) {
              return Column(children: <Widget>[
                ListCard(
                  users: state.user ?? [],
                )
              ]);
            }
          },
        ),
        Header(),
        //Shimmer_Loading()
      ]),
    );
  }
}
