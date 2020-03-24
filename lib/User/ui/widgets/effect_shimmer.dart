import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmer_Loading extends StatelessWidget {
  Shimmer_Loading({Key key}) : super(key: key);

  Widget photo_profile(screenHeigth, screenWidth) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: Container(
        margin: EdgeInsets.only(
            top: screenHeigth * 0.033, left: screenWidth * 0.05),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: Colors.white, width: 2.0, style: BorderStyle.solid),
            shape: BoxShape.circle),
      ),
    );
  }

  Widget rightColumn(screenHeigth, screenWidth) {
    return Container(
      child: Column(children: <Widget>[
        Shimmer.fromColors(
          child: Container(
              height: screenHeigth * 0.03,
              width: screenWidth * 0.3,
              decoration: BoxDecoration(color: Colors.white)),
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
        ),
        Shimmer.fromColors(
          child: Container(
            margin: EdgeInsets.only(top: screenHeigth*0.02),
              height: screenHeigth * 0.02,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(color: Colors.white)),
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeigth * 0.2,
      width: screenWidth * 0.9,
      child: Stack(children: <Widget>[
        Positioned(
          top: 0.0,
          left: 0.0,child: photo_profile(screenHeigth, screenWidth)),
        Positioned(
          top: 30.0,
          right: 0.0
          ,child: rightColumn(screenHeigth, screenWidth))
      ]),
    );
  }
}
