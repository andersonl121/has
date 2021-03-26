import 'package:flutter/material.dart';
import 'package:sas/app/shared/components/roundedButton.dart';
import 'package:sas/app/shared/components/roundedInputText.dart';
import 'package:sas/app/shared/sizeConfig.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  SizeConfig sc;
  @override
  Widget build(BuildContext context) {
    sc = SizeConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Login',
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
          top: 40,
          left: sc.getSize(26),
          right: sc.getSize(26),
        ),
        child: ListView(
          children: [
            RoundedInputText('E-mail'),
            RoundedInputText(
              'Senha',
              obscure: true,
            ),
            RoundedButton(
              () {},
              text: "Login",
            ),
          ],
        ),
      ),
    );
  }
}
