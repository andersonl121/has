import 'package:flutter/material.dart';
import 'package:sas/app/modules/home/home_module.dart';
import 'package:sas/app/shared/MyTheme.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hearing Assistance System',
      debugShowCheckedModeBanner: false,
      theme: MyTheme().getTheme(),
      home: HomeModule(),
    );
  }
}
