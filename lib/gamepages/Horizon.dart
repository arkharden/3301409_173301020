import 'package:flutter/material.dart';

class Horizon extends StatelessWidget {
  const Horizon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Horizon Forbidden West'),
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
                  backgroundImage: AssetImage('assets/images/horizon.png'),
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
                            "Aloy'a, gizemli yeni tehditleri gizleyen görkemli ama tehlikeli bir sınır olan Yasak Batı'ya göğüs gererken katılın. Uzak diyarları keşfedin, daha büyük ve daha fazla hayranlık uyandıran makinelerle savaşın ve uzak gelecekteki, kıyamet sonrası Horizon dünyasına dönerken şaşırtıcı yeni kabilelerle karşılaşın. Toprak ölüyor. Korkunç yeni makineler sınırlarında sinsi sinsi dolaşırken, korkunç fırtınalar ve durdurulamaz bir felaket, insanlığın dağınık kalıntılarını harap ediyor. Dünya'daki yaşam başka bir yok oluşa doğru hızla ilerliyor ve kimse nedenini bilmiyor. Bu tehditlerin ardındaki sırları ortaya çıkarmak ve dünyaya düzeni ve dengeyi geri getirmek Aloy'a kalmış. Yol boyunca, eski arkadaşlarla yeniden bir araya gelmeli, savaşan yeni gruplarla ittifaklar kurmalı ve eski geçmişin mirasını çözmeli - tüm bu süre boyunca yenilmez gibi görünen yeni bir düşmanın bir adım önünde kalmaya çalışırken.",
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
