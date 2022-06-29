import 'package:flutter/material.dart';

class Zelda extends StatelessWidget {
  const Zelda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Zelda : Breath Of The Wild'),
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
                  backgroundImage: AssetImage('assets/images/zelda.png'),
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
                            "https://c.tenor.com/yLl_Tx1j5S0AAAAC/the-legend-of-zelda-breath-of-the-wild-legend-of-zelda-breath-of-the-wild.gif"
                        ),
                            height: 150),
                        SizedBox(height: 25,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "The Legend of Zelda oyunları hakkında bildiğiniz her şeyi unutun. Beğenilen seride sınırları yıkan yeni bir oyun olan The Legend of Zelda: Breath of the Wild'da keşif, keşif ve macera dünyasına adım atın. Bu açık hava macerasında harap olmuş Hyrule krallığına ne olduğunu keşfederken tarlalar arasında, ormanlarda ve dağ zirvelerinde seyahat edin. Hyrule'un vahşi doğasını istediğiniz gibi keşfedin - Yeni yerler bulmak için kulelere ve dağ zirvelerine tırmanın, ardından oraya ulaşmak ve vahşi doğaya dalmak için kendi yolunuzu belirleyin. Yol boyunca, yükselen düşmanlarla savaşacak, vahşi hayvanları avlayacak ve yolculuğunuzda sizi sürdürmek için ihtiyaç duyacağınız yiyecek ve iksirler için malzemeler toplayacaksınız. Keşfetmek ve keşfetmek için 100'den fazla Deneme Tapınağı - Tapınaklar, istediğiniz sırayla keşfedilmeyi bekleyen manzarayı noktalıyor. Onları çeşitli şekillerde arayın ve içindeki çeşitli bulmacaları çözün. Maceranızda size yardımcı olacak özel eşyalar ve diğer ödülleri kazanmak için içerideki tuzaklar ve cihazlar arasında yolunuza devam edin. ",
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
