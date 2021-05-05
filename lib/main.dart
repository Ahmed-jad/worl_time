
import 'package:flutter/material.dart';
import 'package:world_time/pages/about.dart';
import 'package:world_time/pages/contact_me.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/loading.dart';


void main() => runApp(MaterialApp(
  //home:Home(),

  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
     '/about':(context) => About(),
    '/contact_me':(context) => ContactMe()
  },
));


