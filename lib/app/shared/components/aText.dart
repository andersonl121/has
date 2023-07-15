import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sas/app/shared/myTheme.dart';

import '../sizeConfig.dart';

class AText extends StatelessWidget {
  String text;
  TextAlign align;
  Color cor;
  FontWeight fweight;
  double size;

  AText({this.text = "", this.align = TextAlign.center, this.cor = Colors.grey, this.fweight = FontWeight.bold, this.size = 14});

  @override
  Widget build(BuildContext context) {
    var sc = SizeConfig.of(context);
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: cor,
          fontWeight: fweight,
          fontSize: sc.getSize(size),
        ),
      ),
    );
  }
}
