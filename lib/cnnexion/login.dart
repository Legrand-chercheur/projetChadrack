import 'package:flutter/material.dart';
import 'package:untitled2/cnnexion/usersLogin.dart';

import 'inscription.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(image: AssetImage('images/logo.jpeg'))
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Users()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width/1.3,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text('Se connecter',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),),
              ),
            ),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Inscription()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width/1.3,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.red,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text('S\'inscrire',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                ),),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Text('Mot de passe oublie?',style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
    );
  }
}
