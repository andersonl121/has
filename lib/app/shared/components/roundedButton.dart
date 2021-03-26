import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sas/app/shared/sizeConfig.dart';

import '../MyTheme.dart';

class RoundedButton extends StatelessWidget {
  Function fun;
  double largura;
  double fontSize;
  Widget ch;
  String text;
  double padding;

  RoundedButton(this.fun,
      {this.ch, this.fontSize, this.largura, this.text, this.padding});

  @override
  Widget build(BuildContext context) {
    var sc = SizeConfig.of(context);
    return Padding(
      padding: EdgeInsets.only(top: padding == null ? 24 : padding),
      child: Center(
        child: Container(
          width: largura == null ? sc.getSize(220) : sc.getSize(largura),
          height: 50,
          child: RaisedButton(
            onPressed: fun,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(style: BorderStyle.none)),
            color: MyTheme().getTheme().primaryColor,
            disabledColor: MyTheme().getTheme().primaryColor,
            textColor: Colors.white,
            child: text != null
                ? Text(
                    text,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize == null
                            ? sc.getSize(14)
                            : sc.getSize(fontSize),
                      ),
                    ),
                  )
                : ch,
          ),
        ),
      ),
    );
  }
}
