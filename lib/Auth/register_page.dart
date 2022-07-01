import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gamecritic/Auth/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({Key? key, required this.showLoginPage}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //test kontrolleri
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _ageController.dispose();

    super.dispose();
  }

  Future signUp() async {
    // authentication
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // kullanıcı detay ekleme
      addUserDetails(
        _firstNameController.text.trim(),
        _lastNameController.text.trim(),
        _emailController.text.trim(),
        int.parse(_ageController.text.trim()),
        _passwordController.text.trim(),
      );
    }
  }

  Future addUserDetails(
    String firstName,
    String lastName,
    String email,
    int age,
    String password,
  ) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': firstName,
      'last name': lastName,
      'email': email,
      'age': age,
      'password': password,
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() == _passwordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        backgroundColor: Color(0xff1C262F),
        title: Text('Oyun Kritik'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Column(children: [
                    SizedBox(height: 25),
                    // karşılama yazısı
                    Text(
                      'Kayıt Olmak İçin Bilgilerinizi Giriniz',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.orange),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          hintText: 'Adınız',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          hintText: 'Soyadınız',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        controller: _ageController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          hintText: 'Yaşınız',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
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
                    SizedBox(height: 10),

                    //parola girme kısmı
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: true,
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

                    //password control
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: TextField(
                        controller: _confirmpasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.deepOrange),
                          ),
                          hintText: 'Parolanızı Tekrar Giriniz',
                          fillColor: Colors.grey[300],
                          filled: true,
                        ),
                      ),
                    ),

                    SizedBox(height: 10),
                    // giriş yapma
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: GestureDetector(
                        onTap: () {
                          signUp();
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
                          'Kayıt Ol',
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
                        GestureDetector(
                          onTap: widget.showLoginPage,
                          child: Text(
                            'Şimdi Kayıt Olun',
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
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
