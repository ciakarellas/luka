import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class LukaProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: <Widget>[
          Container(
          height: 200,
          //padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage("assets/images/Dallas_Mavericks_logo.svg.png"),
                fit: BoxFit.cover,
                colorFilter: null, 
              ),
            
            ),
          ),
          Container(
          height: 200,
          //padding: EdgeInsets.all(0),
          color: Colors.black54.withOpacity(0.8)
          ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: new Image.asset(
                  "assets/images/Luka_Doncic.png",
                  height: 150.0,
                  fit: BoxFit.cover,
              ),
              ),
            ),
        ] 
      ),
    );
  }
}