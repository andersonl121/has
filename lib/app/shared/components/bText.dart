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

  BText(this.texto, {this.cor = MyTheme.greyText, this.fweight = FontWeight.normal, this.size = 14, this.align = TextAlign.center});
  @override
  Widget build(BuildContext context) {
    var sc = SizeConfig.of(context);
    return Text(
      texto,
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
