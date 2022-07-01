import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gamecritic/Auth/loginscreen.dart';
import '../gamepages/Witcher3.dart';
import '../gamepages/RDR2.dart';
import '../gamepages/Valhalla.dart';
import '../gamepages/Zelda.dart';
import '../gamepages/DyingLight.dart';
import '../gamepages/EldenRing.dart';
import '../gamepages/Horizon.dart';
import '../gamepages/Pokemon.dart';
import '../gamepages/TombRaider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(OyunKritik());
}

class OyunKritik extends StatefulWidget {
  const OyunKritik({Key? key}) : super(key: key);

  @override
  _OyunKritikState createState() => _OyunKritikState();
// Widget build(BuildContext context)
}

void getHttp() async {
  try {
    var response = await Dio().get('my-json-server.typicode.com/arkharden/3301409_173301020/posts/1');
    print(response);
  } catch (e) {
    print(e);
  }
}

class _OyunKritikState extends State<OyunKritik> {
  final user = FirebaseAuth.instance.currentUser!;
  late FirebaseAuth auth;
  late String url;

//document id
  List<String> docIDs = [];
//docID alma
  Future getDocID() async {
    await FirebaseFirestore.instance.collection('users').get().then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            docIDs.add(document.reference.id);

          }),
        );
 }
 @override
  void initState() {
    getDocID();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C262F),
        appBar: AppBar(
          elevation: 0,
          // title: const Text('Oyun Kritik', style: TextStyle(fontSize: 20)),
          backgroundColor: Color(0xFF1B2C3B),
          title: Text('Oyun Kritik'),
          actions: <Widget>[
            new IconButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => LoginScreen(
                                showRegisterPage: () {},
                              )));
                },
                icon: new Icon(Icons.exit_to_app_rounded, size: 30)),
            IconButton(
              onPressed: () {
                getHttp();
              },
              icon: Icon(Icons.person),
            )
          ],

          /*  actions: <Widget>[
            new IconButton(
                onPressed: () {
                  signOutUser();
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => LoginScreen(
                                showRegisterPage: () {},
                              )));
                },
                icon: new Icon(Icons.exit_to_app_rounded, size: 30))
          ],*/
        ),

        // elevation: 0.0,
        //backgroundColor: Color(0xFF1B2C3B),
        //title: Text("Oyun Kritik"),
        //actions: <Widget>[
        //  IconButton(
        //    icon: Icon(
        //      Icons.more_vert,
        //      color: Colors.white,
        //    ),
        //    onPressed: () {},
        //  )
        //   ],

        //Creating the Chip list
        body: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: ListView(
            children: <Widget>[
              Container(
                height: 40.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          getHttp();
                          /*
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return OyunKritik();
                              },
                            ),
                          ); */
                        },
                        child: Text(
                          'Giriş Yap',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),



















                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text("Hepsi",
                            style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text(
                          "Aksiyon",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.blueGrey,
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text("Yarış",
                            style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.blueGrey,
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label:
                            Text("Fps", style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.blueGrey,
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Chip(
                        label: Text("Macera",
                            style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.blueGrey,
                        padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Trendler",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                width: double.infinity,
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EldenRing()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Elden Ring", "96/100",
                            "assets/images/eldenring.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DyingLight()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Dying Light 2", "76/100",
                            "assets/images/dyinglight.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Pokemon()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Pokemon Arceus", "82/100",
                            "assets/images/pokemon.jpg"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Horizon()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Horizon Forbidden West", "88/100",
                            "assets/images/horizon.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "En İyiler",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                width: double.infinity,
                height: 230.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Witcher3()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Witcher 3", "93/100",
                            "assets/images/witcher3.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RDR2()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Red Dead Redemption 2", "97/100",
                            "assets/images/rdr2.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Valhalla()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Assasins Creed Valhalla", "84/100",
                            "assets/images/valhalla.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Zelda()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard(
                            "Zelda BOTW", "97/100", "assets/images/zelda.png"),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TombRaider()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: GameCard("Tomb Raider", "86/100",
                            "assets/images/tombraider.png"),
                      ),
                    ),
                    SizedBox(
                      height: 22.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget GameCard(String gameName, String rate, String imgPath) {
    return InkWell(
      //onTap: () {
      // Navigator.of(context).push(
      //      MaterialPageRoute(
      //        builder: (context) =>
      //            dyinglight(),
      //      ),);
      // },
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
              width: 130.0,
              height: 160.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            gameName,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26.0),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5.0),
          Text(
            rate,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ],
      ),
    );
  }

  void signOutUser() async {
    await auth.signOut();
  }
}
