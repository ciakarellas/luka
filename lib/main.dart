import 'dart:convert';
import 'package:luka/provider/stats_provider.dart';
import 'package:luka/view/home.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import './provider/stats_provider.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var lukaStats =new LukaStatsProvider();
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
        builder: (context) => LukaStatsProvider(),
        child: MaterialApp(
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          title: 'Luka triple stats', 
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Home(),
        ),
    );
  }
}
