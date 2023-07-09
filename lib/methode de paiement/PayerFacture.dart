import 'package:flutter/material.dart';

import 'airtel.dart';
import 'moov.dart';

class PayerFacture extends StatefulWidget {
  const PayerFacture({super.key});

  @override
  State<PayerFacture> createState() => _PayerFactureState();
}

class _PayerFactureState extends State<PayerFacture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Text('Mode de paiement',style: TextStyle(
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
                        child: Image.asset('images/fac.jpeg'),
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(height: 10,),
                      Center(
                        child: Text('Payer une facture'),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Text('Facturation',style: TextStyle(
                    fontSize: 30
                ),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/1.5,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(),
                      ),
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                          border: Border.all(
                              color: Colors.grey
                          )
                      ),
                      child: Center(child: Text('Fcfa',style: TextStyle(
                          fontSize: 20
                      ),)),
                    )
                  ],
                ),
                Text('Effectuer la',style: TextStyle(
                    fontSize: 20
                ),),
                Text('transaction avec:',style: TextStyle(
                    fontSize: 20
                ),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Airtel()));
                      },
                      child: Container(
                        child: Image.asset('images/airtel.jpeg'),
                        width: 150,
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MoovMoney()));
                      },
                      child: Container(
                        child: Image.asset('images/moov.jpeg'),
                        width: 150,
                        height: 60,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
