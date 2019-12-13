import 'dart:convert';

import 'package:http/http.dart'; 
import 'package:html/parser.dart'; 


Future initiate() async {
  var client = Client();
  Response response = await client.get('https://stats.nba.com/player/1629029/9');
  
  var document = parse(response.body);
  print(document);
  List points = document.querySelectorAll('div.player-stats__pts > a > span');
  List rebounds = document.querySelectorAll('div.player-stats__reb > a > span');
  List asists = document.querySelectorAll('div.player-stats__ast > a > span');
  List allStatsList = [];
  allStatsList.add(points[0].text);
  allStatsList.add(rebounds[0].text);
  allStatsList.add(asists[0].text);

  return allStatsList;
}