import 'package:flutter/material.dart';
import 'package:sas/app/modules/home/home_module.dart';
import 'package:sas/app/shared/theme.dart' as Theme;

void main() {
  runApp(MaterialApp(
    title: 'Hearing Assistance System',
    debugShowCheckedModeBanner: false,
    theme: Theme.Theme().getTheme(),
    home: HomeModule(),
  ));
}
