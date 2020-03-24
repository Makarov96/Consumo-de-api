import 'package:flutter/material.dart';

class BackgrounColor extends StatefulWidget {
  double height;
  BackgrounColor({Key key, this.height}) : super(key: key);

  @override
  _BackgrounColorState createState() => _BackgrounColorState();
}

class _BackgrounColorState extends State<BackgrounColor> {
  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (widget.height == null) {
      widget.height = screenHeigth;
    }

    return Container(
      width: screenWidth,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white,
       
      ),
    );
  }
}
