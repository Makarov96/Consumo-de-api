import 'package:flutter/material.dart';
import 'package:restapi/User/ui/widgets/effect_shimmer.dart';
import 'package:restapi/User/ui/widgets/header.dart';
import 'package:restapi/User/ui/widgets/listcard.dart';
import 'package:restapi/User/ui/widgets/structurecard.dart';
import 'package:restapi/widgets/backgroundcolor.dart';

class UserHome extends StatefulWidget {
  UserHome({Key key}) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        BackgrounColor(height: null),
        Column(children: <Widget>[ListCard()]),
        Header(),
        Shimmer_Loading()
      ]),
    );
  }
}
