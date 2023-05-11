import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Tax extends StatefulWidget {
  const Tax({Key? key}) : super(key: key);

  @override
  State<Tax> createState() => _TaxState();
}

class _TaxState extends State<Tax> {
  TextEditingController taxpay = TextEditingController();
  String tax1 = "";

  // get tax => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        title: Text("Tax-pay Indication",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          fontStyle: FontStyle.normal,
          color: Colors.blue,
        ),),

          ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: 200,
              child: TextField(
                textAlign: TextAlign.center,
               controller: taxpay,
               keyboardType: TextInputType.number,
               style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.w700,
                 color: Colors.yellowAccent,
               ),
               decoration: InputDecoration(
                 hintText: "Income",
                 hintStyle:TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.w700,
                   color: Colors.yellowAccent,
                 ),
               ),
                ),
            ),
      ],
          ),

          SizedBox(height: 50,),

          GestureDetector(
            onTap: () {
              double taxpayer = double.parse(taxpay.text);
              double tax =0;
              setState(() {

                if (taxpayer >= 250000 && taxpayer <= 500000) {
                  tax = tax + 0.05 * (taxpayer - 250000);
                }
                else if (taxpayer >= 500000 && taxpayer <= 1000000) {
                  tax = tax + 0.20 * (taxpayer - 500000) +0.05* (taxpayer-250000);
                }
                else if (taxpayer >= 1000000) {
                  tax = tax + 0.30 * (taxpayer - 1000000) +0.05* (taxpayer-250000+ 0.20*(taxpayer-500000));
                }
              });
              tax1 = tax.toString();
            },
            child: Container(
              child: Text("Find",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.yellowAccent,
                fontStyle: FontStyle.italic,
              ),),
            ),
          ),
          SizedBox(height: 30,),
          Visibility(
            visible: tax1.isNotEmpty,
            child: Container(
              child: Text("Tax you need to pay \n\n ${tax1.toString()}"
                  ,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: Colors.yellowAccent,

              ),),
            ),
          ),



        ],
      ) ,

      );

  }
}
