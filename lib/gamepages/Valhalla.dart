import 'package:flutter/material.dart';

class Valhalla extends StatelessWidget {
  const Valhalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Assansins Creed : Valhalla'),
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
                  backgroundImage: AssetImage('assets/images/valhalla.png'),
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
                            "https://c.tenor.com/8xPe7jIvzrsAAAAd/assassins-creed-valhalla.gif"
                        ),
                            height: 150),
                        SizedBox(height: 25,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Kendi Viking Efsanenizi oluşturun. Korkusuz bir savaşçı olarak yetiştirilmiş bir Viking akıncısı olan Eivor olun ve klanınızı Norveç'teki buzlu ıssızlıktan dokuzuncu yüzyıl İngiltere'sinin yemyeşil tarım arazileri arasındaki yeni bir eve götürün. Yerleşiminizi bulun ve Valhalla'da bir yer kazanmak için bu düşman toprakları herhangi bir şekilde fethedin. Vikingler çağında İngiltere, küçük lordların ve savaşan krallıkların parçalanmış bir ulusudur. Kaosun altında yeni bir fatihi bekleyen zengin ve evcilleşmemiş bir ülke yatıyor. sen mi olacaksın Viking Destanınızı Yazın. Gelişmiş RPG mekaniği ile İngiltere'de kendi yolunuzu açın. Zaferi getirmek için acımasız savaşlarda savaşın, ateşli baskınlara liderlik edin veya diğer liderlerle strateji ve ittifaklar kullanın. Savaşta ve sohbette yaptığınız her seçim, büyüklüğe giden yolda bir başka adımdır. Epik Baskınlara Liderlik Edin. Bir akıncı ekibine liderlik edin ve Sakson ordularına ve kalelerine yıldırım hızında sürpriz saldırılar başlatın. Klanınız için düşmanlarınızın topraklarının zenginliklerini talep edin ve nüfuzunuzu büyüyen yerleşiminizin çok ötesine genişletin. VİSSERAL MÜCADELEYE GİRİN. Baltaları, kılıçları ve hatta kalkanları amansız düşmanlara karşı iki yönlü olarak kullanırken bir Viking savaşçısının acımasız dövüş stilini açığa çıkarın. Yakın mesafeli çatışmalarda rakiplerinizin kafasını koparın, onları oklarla delin veya Gizli Kılıcınızla onlara suikast düzenleyin. Yerleşiminizi Büyütün. Klanınızın yeni evi, efsanenizle birlikte büyüyor. Yükseltilebilir yapılar inşa ederek yerleşiminizi özelleştirin. Bir kışla, bir demirci, bir dövme salonu ve çok daha fazlasını inşa ederek yeni özelliklerin ve görevlerin kilidini açın. Özel Raider'ınızı paylaşın. Diğer oyuncular tarafından tasarlanan paralı Vikingleri işe alın veya çevrimiçi paylaşmak için kendinizinkini oluşturun ve özelleştirin. Arkanıza yaslanın ve oyun dünyalarında arkadaşlarınızla birlikte savaştıklarında ödülleri toplayın. Bir Karanlık Çağ Açık Dünya. İngiltere'nin parçalanmış krallıklarını keşfetmek ve fethetmek için buzlu Kuzey Denizi'nde yelken açın. Kendinizi avlanma ve içme oyunları gibi etkinliklere bırakın veya uçma gibi geleneksel İskandinav yarışmalarına katılın - ya da daha iyi bilindiği gibi, Viking rap savaşı sanatıyla sözlü olarak rakiplerinizi yok edin.",
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
