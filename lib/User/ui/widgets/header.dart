import 'package:flutter/material.dart';
class Header extends StatelessWidget {



   Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double screenHeigth = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    

    return Container(
      width: screenWidth,
      height: screenHeigth*0.45,


      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover
          ,image: NetworkImage("https://www.hiltonhotels.com/assets/img/Hotel%20Images/Hilton/C/CZMPCHH/CZMPCHH_gallery_outpool02.jpg")
        ),
        color:Colors.white
      ),
    );
  }
}