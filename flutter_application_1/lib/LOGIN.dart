import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Widget createEmailInput(){
    return  Padding(
             padding: const EdgeInsets.only(top: 32),
             child: TextFormField(
              decoration: InputDecoration(hintText: 'Usuario'),
              ),
    );
  }

     Widget createPasswordInput(){
      return Padding(
             padding: const EdgeInsets.only(top: 32),
             child: TextFormField(
              decoration: InputDecoration(hintText: 'Contraseña'),obscureText: true,
              ),
           );
     }

     Widget  createLoginButton(){
      return OutlinedButton(
  onPressed: () {
    print("Button pressed");
  },
  child: Text("Iniciar sesión"),
);
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration:BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
      
            Image.asset('assets/images/LOGO.jpg',
             height:300,
            ),
          createEmailInput(),
           createPasswordInput(),
            createLoginButton(),
          ],
        ),
      ),
    );
  }
}