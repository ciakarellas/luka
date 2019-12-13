
import 'package:flutter/material.dart';
import 'package:luka/provider/stats_provider.dart';
import 'package:luka/view/luka_profile.dart';

import 'luka_stats.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          body: SafeArea(
            child: Column(
              children: <Widget>[
                LukaProfile(),
                LukaStats(),
              ],
            ),
          )
        );
  }
}