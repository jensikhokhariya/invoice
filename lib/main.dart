import 'package:flutter/material.dart';
import 'package:invoice/screen/in_1.dart';
import 'package:invoice/screen/invoice.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Invoice(),
        'page1':(context)=>In_1(),
      },
    ),
  );
}