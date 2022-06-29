import 'package:flutter/material.dart';

class RDR2 extends StatelessWidget {
  const RDR2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Read Dead Redemption 2'),
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
                  backgroundImage: AssetImage('assets/images/rdr2.png'),
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
                            "https://i.pinimg.com/originals/94/d0/98/94d0988a686c60c32fba7ed3a1647863.gif"
                        ),
                            height: 150),
                        SizedBox(height: 25,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "Grand Theft Auto V ve Red Dead Redemption'ın yaratıcıları tarafından geliştirilen Red Dead Redemption 2, Amerika'nın acımasız kalbindeki destansı bir yaşam hikayesidir. Oyunun geniş ve atmosferik dünyası, aynı zamanda yepyeni bir çevrimiçi çok oyunculu deneyim için temel sağlar. Amerika, 1899. Vahşi Batı döneminin sonu başladı. Batıdaki Blackwater kasabasında bir soygun kötü bir şekilde ters gidince, Arthur Morgan ve Van der Linde çetesi kaçmak zorunda kalır. Federal ajanlar ve ulusun en iyi ödül avcıları peşlerinden koşarken, çete hayatta kalmak için Amerika'nın engebeli kalbinde yol almak, soymak, çalmak ve savaşmak zorundadır. Derinleşen iç çatlaklar çeteyi parçalamakla tehdit ederken, Arthur kendi idealleri ile kendisini yetiştiren çeteye sadakati arasında bir seçim yapmak zorundadır.",
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
