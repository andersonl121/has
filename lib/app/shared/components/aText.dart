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

  AText({this.text, this.align, this.cor, this.fweight, this.size});

  @override
  Widget build(BuildContext context) {
    var sc = SizeConfig.of(context);
    return Text(
      text,
      textAlign: align == null ? TextAlign.center : align,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: cor == null ? MyTheme().getTheme().primaryColor : cor,
          fontWeight: fweight == null ? FontWeight.bold : fweight,
          fontSize: size == null ? sc.getSize(14) : sc.getSize(size),
        ),
      ),
    );
  }
}
