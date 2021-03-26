import 'package:flutter/material.dart';
import 'package:sas/app/shared/components/aText.dart';
import 'package:sas/app/shared/components/myDrawer.dart';
import 'package:sas/app/shared/myTheme.dart';
import 'package:sas/app/shared/sizeConfig.dart';

class HomePage extends StatelessWidget {
  var sc;
  HomePage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    sc = SizeConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AText(
          text: "Hearing Assistance System",
          cor: MyTheme().getWhiteTextColor(),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Container(
          width: sc.getSize(236.0),
          height: sc.getSize(236.0),
          decoration: BoxDecoration(
            color: const Color(0xffeeeeee),
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            border: Border.all(
              color: Colors.white,
              width: sc.getSize(18),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
          child: Image.asset('assets/mic.png'),
        ),
      ),
      endDrawer: MyDrawer(),
    );
  }
}
