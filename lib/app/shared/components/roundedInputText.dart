import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sas/app/shared/myTheme.dart';

import '../sizeConfig.dart';

class RoundedInputText extends StatelessWidget {
  String label;
  double largura;
  Color? cor;
  FontWeight? fweight;
  double size;
  TextEditingController? cont;
  int length;
  bool focus;
  bool obscure;
  Function()? tap;
  TextInputType kit;
  bool showCounter;
  String? Function(String? value)? val;
  double padding;

  RoundedInputText(this.label,
      {this.largura = 300,
      this.cor,
      this.fweight,
      this.size = 14,
      this.cont,
      this.length = 60,
      this.focus = false,
      this.obscure = false,
      this.tap,
      this.kit = TextInputType.text,
      this.showCounter = false,
      this.val,
      this.padding = 24});
  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig.of(context);
    return Padding(
      padding: EdgeInsets.only(top: padding),
      child: Container(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        width: sc.getSize(largura),
        height: 65,
        child: TextFormField(
          validator: val == null
              ? (value) {
                  String? retorno;
                  if (value!.length == 0) {
                    retorno = 'Campo não pode ser vazio.';
                  }
                  return retorno;
                }
              : val,
          autofocus: focus,
          obscureText: obscure,
          buildCounter: (BuildContext context,
              {required int currentLength,
              required bool isFocused,
              required int? maxLength}) {
            if (showCounter == true) {
              return Text(
                '$currentLength/$maxLength',
                semanticsLabel: 'character count',
              );
            }
          },
          maxLength: length,
          keyboardType: kit,
          controller: cont,
          onTap: tap,
          cursorColor: MyTheme().getTheme().primaryColor,
          style: TextStyle(
            color: cor == null ? MyTheme().getTheme().primaryColor : cor,
            fontWeight: fweight == null ? FontWeight.normal : fweight,
            fontSize: sc.getSize(size),
          ),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: cor == null ? MyTheme().getTheme().primaryColor : cor,
                fontWeight: fweight == null ? FontWeight.bold : fweight,
                fontSize: size == null ? sc.getSize(14) : sc.getSize(size),
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                style: BorderStyle.solid,
                color: MyTheme().getTheme().primaryColor,
              ),
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1,
                  style: BorderStyle.solid,
                  color: MyTheme().getGreyTextColor()),
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
            ),
            contentPadding: EdgeInsets.all(16),
          ),
        ),
      ),
    );
  }
}
