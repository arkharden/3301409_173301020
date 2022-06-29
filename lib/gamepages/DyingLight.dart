import 'package:flutter/material.dart';

class DyingLight extends StatelessWidget {
  const DyingLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dying Light2'),
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
                  backgroundImage: AssetImage('assets/images/dyinglight.png'),
                  backgroundColor: Color(0xFF1B2C3B),
                  radius: 120.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  height: 400.0,
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        SizedBox(height: 25,),
                        Image(image: NetworkImage(
                            "https://media3.giphy.com/media/TgT0Z4TGPA9CuerYiA/giphy.gif"
                        ),
                            height: 150),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            " Şehrin kaderi Kendinde insanlığın virüse yenilmesinden bu yana 15 yıl geçti. Son büyük insan yerleşimi, modern karanlık bir çağa dalmış, affedilmez, enfekte olmuş bir dünyada var. Gün boyunca, haydutlar, hizipler ve açlıktan kurtulanlar sokaklarda dolaşıyor ve artıkları ya da gerekirse şiddet yoluyla onları alacak birini arıyorlar. Geceleri enfekte olan serbestçe dolaşır, karanlık sığınaklarını yaşayanları avlamak için boşaltır. Sen Aiden Caldwell'sin, hasta bir kurtulan. Olağanüstü çevikliğiniz ve acımasız savaş becerileriniz sizi bu tehlikeli dünyada güçlü bir müttefik ve değerli bir meta haline getirir. Kimsenin başaramayacağı şeyleri başarabilirsin. Kimsenin cesaret edemediği yerlere girin. Eşsiz yeteneklerinizle, bu çürüyen metropolde bir değişim ajanı olma gücüne sahipsiniz.",
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
