import 'package:flutter/material.dart';
import 'package:sas/app/modules/home/home_module.dart';
import 'package:sas/app/shared/myTheme.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hearing Assistance System',
    debugShowCheckedModeBanner: false,
    theme: MyTheme().getTheme(),
    home: HomeModule(),
  ));
}