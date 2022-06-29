import 'dart:ffi';
import 'package:gamecritic/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'forgotpasswordpage.dart';
//import 'package:google_fonts/google_fornts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //test kontrolleri
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    //yükleme kısmı

     await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    showDialog(
      context: context,
      builder: (context) {
        return Center(child: CircularProgressIndicator());
      },
    );

    // pop ile yükleme kısmı
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1C262F),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.videogame_asset,
              size: 100,
              color: Colors.orange,
            ),
            Center(
              child: Column(
                children: [
                  Column(children: [
                    // karşılama yazısı
                    SizedBox(height: 25),
                    Text(
                      'Oyun Kritik',
                      style: GoogleFonts.bebasNeue(
                        color: Colors.orange,
                        fontSize: 54,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Oyunlar Hakkında Her Şey',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.orange),
                    ),
                    SizedBox(height: 20),

                    // email girme kısmı
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          hintText: 'Email',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                      ),
                    ),

                    //parola girme kısmı
                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          hintText: 'Password',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ForgotPasswordPage();
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'Parolamı Unuttum',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10),
                    // giriş yapma
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          signIn();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return OyunKritik();
                              },
                            ),
                          );
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

                    SizedBox(height: 10),

                    //kayıt olma
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Henüz Kayıt Olmadıysanız',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Text(
                          'Şimdi Kayıt Olun',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
