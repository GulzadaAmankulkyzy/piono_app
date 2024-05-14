// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piono_app/app/app.dart';

void main() {
  // print('resort');
  WidgetsFlutterBinding();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}
