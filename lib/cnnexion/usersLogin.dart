import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  TextEditingController email = TextEditingController();
  TextEditingController mdp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )
              ),
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(image: AssetImage('images/logo.jpeg'))
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Column(
                    children: [
                      TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'E-mail'
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextField(
                        obscureText: true,
                        controller: mdp,
                        decoration: InputDecoration(
                          hintText: 'Mot de passe'
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/5,),
                GestureDetector(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Users()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(
                      child: Text('Connexion',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
