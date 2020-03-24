import 'package:flutter/material.dart';
import 'package:restapi/User/model/user.dart';

class StructureCard extends StatefulWidget {
  User userModel;

  StructureCard({Key key, this.userModel}) : super(key: key);
  @override
  _StructureCardState createState() => _StructureCardState();
}

class _StructureCardState extends State<StructureCard> {
  Widget photo_profile(context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin:
          EdgeInsets.only(top: screenHeigth * 0.033, left: screenWidth * 0.05),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0, style: BorderStyle.solid),
          image: DecorationImage(
              image: NetworkImage(widget.userModel.avatar),
              fit: BoxFit.contain),
          shape: BoxShape.circle),
    );
  }

  Widget rightColumn(screenHeigth, screenWidth) {
    return Container(
      padding: EdgeInsets.only(left: 80.0),
      margin: EdgeInsets.only(left: 80.0),
      child: Column(children: <Widget>[
        Flexible(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                  "${widget.userModel.firstName} ${widget.userModel.lastName}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            )),
        Flexible(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Text(widget.userModel.email,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
            )),
        Container(
          margin: EdgeInsets.only(top: 15.0),
          child: Wrap(children: <Widget>[
            Container(
                padding: const EdgeInsets.all(0.0),
                width:
                    screenWidth * 0.07, // you can adjust the width as you need
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xFFFFBF00),
                    ))),
            Container(
                padding: const EdgeInsets.all(0.0),
                width:
                    screenWidth * 0.07, // you can adjust the width as you need
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xFFFFBF00),
                    ))),
            Container(
                padding: const EdgeInsets.all(0.0),
                width:
                    screenWidth * 0.07, // you can adjust the width as you need
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xFFFFBF00),
                    ))),
            Container(
                padding: const EdgeInsets.all(0.0),
                width:
                    screenWidth * 0.07, // you can adjust the width as you need
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xFFFFBF00),
                    ))),
            Container(
                padding: const EdgeInsets.all(0.0),
                width:
                    screenWidth * 0.07, // you can adjust the width as you need
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Color(0xFFFFBF00),
                    )))
          ]),
        )
      ]),
    );
  }

  Widget card(screenHeigth, screenWidth) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      height: screenHeigth * 0.2,
      width: screenWidth * 0.9,
      child: rightColumn(screenHeigth, screenWidth),
      decoration: BoxDecoration(
          color: Color(0xFF434372),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(3.0, 2.0), //(x,y)
              blurRadius: 1.8,
            )
          ]),
    );
  }

  Widget structure(context) {
    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(children: <Widget>[
      card(screenHeigth, screenWidth),
      photo_profile(context)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return structure(context);
  }
}
