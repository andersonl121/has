import 'package:flutter/material.dart';
import 'package:sas/app/modules/login/login_module.dart';
import 'package:sas/app/modules/signup/signup_module.dart';
import 'package:sas/app/shared/components/bText.dart';
import 'package:sas/app/shared/sizeConfig.dart';

class MyDrawer extends StatelessWidget {
  SizeConfig sc;

  @override
  Widget build(BuildContext context) {
    this.sc = SizeConfig.of(context);
    return Drawer(
        child: Padding(
      padding: EdgeInsets.all(sc.getSize(30.0)),
      child: ListView(
        children: <Widget>[
          //Item Home
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginModule()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: sc.getSize(15)),
                    child: Image.asset(
                      'assets/icons/icon_home.png',
                    ),
                  ),
                  BText('Home', size: 18),
                ],
              ),
            ),
          ),

          //Item Login
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginModule()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: sc.getSize(15)),
                    child: Image.asset(
                      'assets/icons/icon_login.png',
                    ),
                  ),
                  BText('Login', size: 18),
                ],
              ),
            ),
          ),
          //Item Signup
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignupModule()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: sc.getSize(15)),
                    child: Image.asset(
                      'assets/icons/icon_signup.png',
                    ),
                  ),
                  BText('Faça Parte', size: 18),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignupModule()));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 12),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: sc.getSize(15)),
                    child: Image.asset(
                      'assets/icons/icon_logout.png',
                    ),
                  ),
                  BText('Sair', size: 18),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
