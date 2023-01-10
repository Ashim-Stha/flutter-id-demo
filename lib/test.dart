import 'package:flutter/material.dart';
import 'package:ioe/pages/load.dart';
import 'package:ioe/pages/home.dart';
import 'package:ioe/pages/read.dart';
import 'package:ioe/pages/login.dart';
import 'package:ioe/pages/widgets/booklist.dart';


void main() =>runApp(
  MaterialApp(
    initialRoute: 'home',
    routes: {
      '/': (context)=>Home(),
      '/load': (context)=>Load(),
      '/read' : (context)=>Read(),
      '/login':(context)=> Login(),
      '/booklist':(context)=> BookList(),
    },
  ),
);







