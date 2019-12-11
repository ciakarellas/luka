import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../provider/stats_provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final lukaStatsProvider = Provider.of<LukaStats>(context);


    return Scaffold(
          body: Container(
            margin: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Text(lukaStatsProvider.points.toString()),
                FlatButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    lukaStatsProvider.updatePointsData();
                  },
                )
              ],
            ),
            )
        );
  }
}