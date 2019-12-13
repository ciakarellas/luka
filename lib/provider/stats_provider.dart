import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../web_scraper/web_scraper.dart' as lukaStats;

class LukaStatsProvider extends ChangeNotifier {

  var _points, _rebounds, _asists;

  get points => _points;
  get rebounds => _rebounds;
  get asists => _asists;

  void updatePointsData() async {
    var stats = await lukaStats.initiate();
    _points = double.parse(stats[0]);
    _rebounds = double.parse(stats[1]);
    _asists = double.parse(stats[2]);
    notifyListeners();
  }
  

}