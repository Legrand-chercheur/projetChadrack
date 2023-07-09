import 'package:flutter/material.dart';


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

                Text('Effectuer la',style: TextStyle(
                    fontSize: 20
                ),),
                Text('transaction avec:',style: TextStyle(
                    fontSize: 20
                ),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
