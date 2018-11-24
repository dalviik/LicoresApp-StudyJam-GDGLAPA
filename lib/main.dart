import 'package:flutter/material.dart';
import 'package:proy_licores_flutter/home_page.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent[600],

      ),
      home: HomePage(),
    )
  );
}

