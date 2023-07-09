import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(height: 50,),
          Center(
            child: Text('Mon profil',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
          ),
          SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50)
              )
            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                    child: Icon(Icons.person,),
                    width: 50,
                    height: 50,
                ),
                Text('Chadrack'),
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>PagesPrincipale()));
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.grey
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Mes commandes',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            ),),
                            Text('>',style: TextStyle(
                              color: Colors.black54,
                              fontSize: 18,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>PagesPrincipale()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.3,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Parametres',style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                          ),),
                          Text('>',style: TextStyle(
                            color: Colors.black54,
                            fontSize: 18,
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/6,),
                GestureDetector(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>PagesPrincipale()));
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.3,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Center(
                        child: Text('Se deconnecter',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
