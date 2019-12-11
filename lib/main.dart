import 'dart:convert';
import 'package:luka/provider/stats_provider.dart';
import 'package:luka/view/home.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Luka triple stats',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        builder: (context) => LukaStats(),
        child: Home(),
      ),
    );
  }
}
