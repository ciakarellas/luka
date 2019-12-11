import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../web_scraper/web_scraper.dart' as lukaStats;

void main(){
  lukaStats.initiate();

}

class LukaStats extends ChangeNotifier {

  var _points, _rebounds, _asists;

  get points => _points;

  void updatePointsData() async {
    var stats = await lukaStats.initiate();
    _points = double.parse(stats[0]).round();
    notifyListeners();
  }
  

}