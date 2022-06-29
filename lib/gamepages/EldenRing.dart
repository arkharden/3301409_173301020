import 'package:flutter/material.dart';

class EldenRing extends StatelessWidget {
  const EldenRing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Elden Ring'),
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
                  backgroundImage: AssetImage('assets/images/eldenring.png'),
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
                            "Hidetaka Miyazaki ve George R. R. Martin Tarafından Yaratılan Yeni Bir Dünya. FromSoftware, Inc. ve BANDAI NAMCO Entertainment Inc. tarafından geliştirilen ELDEN RING, etkili DARK SOULS video oyunu serisinin yaratıcısı Hidetaka Miyazaki tarafından yaratılan bir dünyada geçen bir fantezi aksiyon-RPG macerasıdır; ve George R.R. Martin, The New York Times'ın en çok satan fantastik dizisi A Song of Ice and Fire'ın yazarı. FromSoftware'in bugüne kadarki en büyük oyununda tehlike ve keşif her köşede pusuda. Hidetaka Miyazaki, FromSoftware Inc.'in Başkanı ve Oyun Direktörü. Armored Core, Dark Souls ve Sekiro: Shadows Die Twice gibi sevilen serilerde eleştirmenlerce beğenilen oyunları yönetmesiyle tanınır. George RR Martin, beğenilen A Song of Ice and Fire - A Game of Thrones, A Clash of Kings, A Storm of Swords, A Feast For Crows ve A Dance dahil olmak üzere birçok romanıyla New York Times'ın en çok satan 1 numaralı yazarıdır. Ejderhalar ile. Yazar-yapımcı olarak Alacakaranlık Kuşağı, Güzel ve Çirkin ve daha önce hiç yapılmamış çeşitli uzun metrajlı filmler ve pilot filmler üzerinde çalıştı.",
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
