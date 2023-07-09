import 'package:flutter/material.dart';

import '../methode de paiement/payerDocument.dart';

class Documetation extends StatefulWidget {
  const Documetation({super.key});

  @override
  State<Documetation> createState() => _DocumetationState();
}

class _DocumetationState extends State<Documetation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Text('Ajouter une commande',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 21
            ),),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                )
            ),
            child: Column(
              children: [
                Container(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.height/2,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset('images/document.jpeg'),
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text('Legaliser un document'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 60,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Description de'),
                        Text('la course'),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Adresse de'),
                        Text('livraison'),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Adresse de'),
                        Text('legalisation:'),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                GestureDetector(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PayerDocument()));
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
                          child: Text('Valider',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
