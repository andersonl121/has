import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hearing Assistance System',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color(0xffffffff),
      body: Center(
        child: Container(
          width: 236.0,
          height: 236.0,
          decoration: BoxDecoration(
            color: const Color(0xffeeeeee),
            borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            border: Border.all(
              color: Colors.white,
              width: 18,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x29000000),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
          child: Image.asset('assets/mic.png'),
        ),
      ),
      endDrawer: Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("meus favoritos..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                debugPrint('toquei no drawer');
              })
        ],
      )),
    );
  }
}
