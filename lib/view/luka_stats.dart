import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/stats_provider.dart';



class LukaStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final lukaStatsProvider = Provider.of<LukaStatsProvider>(context);
    if(lukaStatsProvider.points == null || lukaStatsProvider.rebounds == null || lukaStatsProvider.asists == null){lukaStatsProvider.updatePointsData();}
    return DataTable(
      columns: [
        DataColumn(label: Text("AVG PTS")),
        DataColumn(label: Text("AVG REB")),
        DataColumn(label: Text("AVG AST")),
      ],
      rows: [DataRow(
        cells: [
          DataCell(Text(lukaStatsProvider.points.toString())),
          DataCell(Text(lukaStatsProvider.rebounds.toString())),
          DataCell(Text(lukaStatsProvider.asists.toString())),
          ]
      )],
    );
          
  }
}