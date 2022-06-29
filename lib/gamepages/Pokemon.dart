import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  const Pokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pokemon Legends: Arceus'),
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
                  backgroundImage: AssetImage('assets/images/pokemon.jpg'),
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
                            "Cesur Yeni Yön. Pokémon Legends: Arceus oyunu, yeni aksiyon ve RPG öğelerini beslerken geçmiş Pokémon oyunlarının temel oynanışını onurlandırıyor. Bölgenin ilk Pokédex'ini oluşturmak ve tamamlamak için Sinnoh bölgesinin uzun süredir devam eden bir döneminde vahşi Pokémon'u yakalamanız, araştırmanız ve araştırmanız gerekecek.",
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
