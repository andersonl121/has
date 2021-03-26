import 'package:flutter/material.dart';
import 'package:sas/app/shared/components/roundedButton.dart';
import 'package:sas/app/shared/components/roundedInputText.dart';
import 'package:sas/app/shared/sizeConfig.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  SizeConfig sc;
  @override
  Widget build(BuildContext context) {
    sc = SizeConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cadastre-se',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: sc.getSize(20),
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 30,
          bottom: 30,
          left: sc.getSize(26),
          right: sc.getSize(26),
        ),
        child: ListView(
          children: [
            RoundedInputText('Nome'),
            RoundedInputText('Telefone'),
            RoundedInputText('E-mail'),
            RoundedInputText('Data de Nascimento'),
            RoundedInputText(
              'Senha',
              obscure: true,
            ),
            RoundedInputText(
              'Repita sua Senha',
              obscure: true,
            ),
            RoundedButton(
              () {},
              text: "Enviar",
            ),
          ],
        ),
      ),
    );
  }
}
