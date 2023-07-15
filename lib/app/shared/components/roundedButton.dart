import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sas/app/shared/sizeConfig.dart';

import '../MyTheme.dart';

class RoundedButton extends StatelessWidget {
  Function()? fun;
  double largura;
  double fontSize;
  Widget? ch;
  String? text;
  double padding;

  RoundedButton(this.fun,
      {this.ch,
      this.fontSize = 14,
      this.largura = 220,
      this.text,
      this.padding = 24});

  @override
  Widget build(BuildContext context) {
    var sc = SizeConfig.of(context);
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: Center(
        child: Container(
          width: sc.getSize(largura),
          height: 50,
          child: ElevatedButton(
            onPressed: fun,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(style: BorderStyle.none)),
              backgroundColor: MyTheme().getTheme().primaryColor,
              disabledBackgroundColor: MyTheme().getTheme().primaryColor,
            ),
            child: text != null
                ? Text(
                    text.toString(),
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: sc.getSize(fontSize),
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
