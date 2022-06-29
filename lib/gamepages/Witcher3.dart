import 'package:flutter/material.dart';

class Witcher3 extends StatelessWidget {
  const Witcher3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Witcher 3 : Wild Hunt'),
          backgroundColor: Color(0xff1C262F),
        ),
        backgroundColor: Color(0xff1C262F),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 12.0,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/witcher3.png'),
                  backgroundColor: Color(0xFF1B2C3B),
                  radius: 120.0,
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: double.infinity,
                  height: 230.0,
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "İmparatorluk, Kuzey Krallıklarına ve Vahşi Av'a saldırırken, korkunç binicilerin süvarileri, boynunuzdan nefes alırken, hayatta kalmanın tek yolu savaşmaktır. Usta bir kılıç ustası ve canavar avcısı olan Rivialı Geralt olarak, düşmanlarınızın hiçbirini ayakta bırakmayın. Devasa bir açık dünyayı keşfedin, canavarları öldürün ve eylemlerinizle tüm toplulukların kaderine karar verin, hepsi gerçek bir yeni nesil formatta.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
