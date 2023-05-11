import 'dart:math';

import 'package:flutter/material.dart';

class Simple_compound extends StatefulWidget {
  const Simple_compound({Key? key}) : super(key: key);

  @override
  State<Simple_compound> createState() => _Simple_compoundState();
}

class _Simple_compoundState extends State<Simple_compound> {
  TextEditingController _p = TextEditingController();
  TextEditingController _r = TextEditingController();
  TextEditingController _t = TextEditingController();
  TextEditingController _P = TextEditingController();
  TextEditingController _R = TextEditingController();
  TextEditingController _T = TextEditingController();
  double B = 0;
  double A = 0;
  String a = "";
  String a2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Simple And Compound Interest",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,
          color: Colors.orange,
        ),),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // color: Colors.red,
            child: Text(
              "Simple Interest : ",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // color: Colors.yellowAccent,

                child: Text(
                  "Formula : A = ",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                // color: Colors.blueGrey,
                width: 50,
                child: TextField(
                  controller: _p,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    hintText: "P",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),

                ),
              ),
              Container(
                // color: Colors.pink,
                child: Text(
                  "(1 + ",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                // color: Colors.green,
                width: 50,
                child: TextField(
                  // keyboardType: TextInputType.number,

                  controller: _r,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "r",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),

                ),
              ),
              Container(
                width: 50,
                // color: Colors.white,
                child: TextField(
                  controller: _t,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "t",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),

                ),
              ),
              Container(
                // color: Colors.pink,
                child: Text(
                  ")",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                // color: Colors.red,
                child: Text(
                  "where, A = final amount\n p = initial principal balance in Rs\n r = annual interest rate"
                      "\nt = time(in years) ",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  double r = double.parse(_r.text);
                  double t = double.parse(_t.text);
                  double p = double.parse(_p.text);
                  setState(() {
                    r = r/100;
                    A = p*(1+r*t);
                  });
                  a = A.toString();
                },
                child: Container(
                  // color: Colors.blue,
                  child: Text("final amount :",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: a.isNotEmpty,
                child: Container(
                  // color: Colors.teal,
                child: Text("${a} Rs",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                ),
              ),)
            ],
          ),

          SizedBox(height: 10,),
          Divider(
            color: Colors.orangeAccent,
            height: 20,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Container(
            // color: Colors.red,
            child: Text(
              "Compound interest : ",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Colors.yellowAccent,

                child: Text(
                  "Formula : A = P((1+r/n)^nt)",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Colors.yellowAccent,

                child: Text(
                  "Principal rate (p):",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                // color: Colors.blueGrey,
                width: 100,

                child: TextField(
                  controller: _P,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    hintText: "P",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),

                ),
              ),

            ],
          ),
          // SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Colors.yellowAccent,

                child: Text(
                  " Rate of interest(r):",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                // color: Colors.blueGrey,
                // height: 25,
                width: 100,
                child: TextField(
                  controller: _R,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    hintText: "r",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),

                ),
              ),


            ],
          ),
          // SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Colors.yellowAccent,

                child: Text(
                  " Number of years,n:",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Container(
                // color: Colors.blueGrey,
                width: 100,
                child: TextField(
                  controller: _T,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.orange,
                  ),
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    hintText: "t/n",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),

                ),
              ),


            ],
          ),
          SizedBox(height: 10,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       // color: Colors.red,
          //       child: Text(
          //         "where, A = final amount\n p = initial principal balance in Rs\n r = annual interest rate"
          //             "\nt = time(in years)\n n = number of times interest is compounded per year ",
          //         style: TextStyle(
          //           color: Colors.orange,
          //           fontSize: 15,
          //           fontWeight: FontWeight.w300,
          //           fontStyle: FontStyle.italic,
          //         ),
          //       ),
          //     ),
          //
          //   ],
          // ),
          // SizedBox(height: 30,),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  double R = double.parse(_R.text);
                  double T = double.parse(_T.text);
                  double P = double.parse(_P.text);
                  setState(() {
                    R = R/100;
                    // B = p*(1+pow(r/t,t*t));
                    B = P*(pow(1+R/T, T*T));
                  });
                  a2 = B.toString();
                },
                child: Container(
                  // color: Colors.blue,
                  child: Text("final amount :",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: a2.isNotEmpty,
                child: Container(
                  // color: Colors.teal,
                  child: Text("${a2} Rs",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.orange,
                    ),
                  ),
                ),)
            ],
          ),


        ],




      ),
    );
  }
}
