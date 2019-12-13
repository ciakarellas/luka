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
          color: Colors.black54.withOpacity(0.8)
          ),
          Row(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  child: new Image.asset(
                    "assets/images/Luka_Doncic.png",
                    height: 170.0,
                    fit: BoxFit.cover,
                ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Text(
                      "#77",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Luka',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )
                          ),
                          Text(
                            'Doncic',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                              
                            ),
                          )
                        ],
                        ),
                    )
                  ],
                ),
              )
            ],
          )
        ] 
      ),
    );
  }
}