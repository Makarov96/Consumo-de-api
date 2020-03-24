import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restapi/User/bloc/userbloc.dart';
import 'package:restapi/User/ui/screens/userhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
        BlocProvider<UserBloc>(create: (context)=>UserBloc())
    ], child:MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserHome(),

    ) );
  }
}

