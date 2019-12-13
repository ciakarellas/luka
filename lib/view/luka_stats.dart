import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/stats_provider.dart';



class LukaStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final lukaStatsProvider = Provider.of<LukaStatsProvider>(context);
    
    return Container(
            margin: EdgeInsets.all(8.0),
            child: Center(
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
            ),
          );
  }
}