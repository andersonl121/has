import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sas/app/shared/myTheme.dart';

import '../sizeConfig.dart';

class BText extends StatelessWidget {
  String texto;
  Color cor;
  FontWeight fweight;
  double size;
  TextAlign align;

  BText(this.texto, {this.cor, this.fweight, this.size, this.align});
  @override
  Widget build(BuildContext context) {
    var sc = SizeConfig.of(context);
    return Text(
      texto,
      textAlign: align == null ? TextAlign.center : align,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: cor == null ? MyTheme().getGreyTextColor() : cor,
          fontWeight: fweight == null ? FontWeight.normal : fweight,
          fontSize: size == null ? sc.getSize(14) : sc.getSize(size),
        ),
      ),
    );
  }
}
