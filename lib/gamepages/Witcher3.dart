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
                  height: 400.0,
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        SizedBox(height: 25,),
                        Image(image: NetworkImage(
                            "https://steamuserimages-a.akamaihd.net/ugc/955227220413855705/181BFD92E6E73EED9C732D60F73B182B3858B2DC/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false"
                        ),
                            height: 150),
                        SizedBox(height: 25,),

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
