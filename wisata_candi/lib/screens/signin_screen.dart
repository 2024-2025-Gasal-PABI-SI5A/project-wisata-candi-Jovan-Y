import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SigninScreen extends StatefulWidget{
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //TODO: 1 deklarasi variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: 2 appbar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      //TODO: 3 body
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(child: Column(
              //TODO: 4 alignment
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //TODO: 5 buat textform
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Pengguna',
                    hintText: 'Masukkan nama pengguna',
                    border: OutlineInputBorder(),
                  ),
                ),
                //TODO: 6 textform sandi
                const SizedBox(height: 20,),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Kata sandi',
                    hintText: 'Masukkan kata sandi',
                    border: OutlineInputBorder(),
                    errorText: _errorText.isNotEmpty ? _errorText : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                      _obscurePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                  ),
                  obscureText: _obscurePassword,
                ),
                //TODO: 7 elevatedbutton signin
                const SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: const Text('sign in'),),
                //TODO: 8.singup
                const SizedBox(height: 10,),
                //TextButton(onPressed: (){}, child: Text('belum punya akun? daftar disini!')),
                RichText(
                  text: TextSpan(
                    text: 'belum punya akun?',
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                    children: [
                      TextSpan(
                        text: 'daftar disini',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.deepPurple, 
                          decoration: TextDecoration.underline,
                          ),
                        recognizer: TapGestureRecognizer()..onTap = (){},
                      ),
                    ],
                  )
                  ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}