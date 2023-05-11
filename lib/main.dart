// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:mycalculatorhighversion/different_pages/home.dart';
import 'package:mycalculatorhighversion/different_pages/advancedcal.dart';
import 'package:mycalculatorhighversion/different_pages/distance_conversion.dart';
import 'package:mycalculatorhighversion/different_pages/bmical.dart';
import 'package:mycalculatorhighversion/different_pages/intermediatecal.dart';
import 'package:mycalculatorhighversion/different_pages/liquid_conversion.dart';
import 'package:mycalculatorhighversion/different_pages/noramlcal.dart';
import 'package:mycalculatorhighversion/different_pages/simple and compound interest.dart';
import 'package:mycalculatorhighversion/different_pages/tax cal.dart';


void main() {
  runApp(MaterialApp(
      initialRoute: '/',
    routes: {
      '/' : (context) => Home(),
      // '/advancecal': (context) => Advancecal(),
      '/bmical' : (context) => bmical(),
      // '/distance' : (context) => Distance(),
      '/intermediatecal' : (context) => Intermediate(),
      // '/liquid' : (context) => Liquid(),
      '/normalcal' : (context) => Normalcal(),
      '/simpleandcompound' : (context) => Simple_compound(),
      '/taxcal' : (context) => Tax(),
    },
    title: 'My Calculator',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.yellow,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
  ));
}


