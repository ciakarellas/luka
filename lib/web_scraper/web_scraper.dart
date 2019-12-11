import 'dart:convert';

import 'package:http/http.dart'; 
import 'package:html/parser.dart'; 


Future initiate() async {
  var client = Client();
  Response response = await client.get('https://stats.nba.com/player/1629029/9');
  
  var document = parse(response.body);
  print(document);
  List part_of_html = document.querySelectorAll('div.player-stats__pts > a > span');
  List allStatsList = [];
  allStatsList.add(part_of_html[0].text);

  return allStatsList;
}