import 'package:flutter/material.dart';
import 'dart:math';
import 'package:mycalculatorhighversion/calculation.dart';


class Normalcal extends StatefulWidget {
  const Normalcal({Key? key}) : super(key: key);

  @override
  State<Normalcal> createState() => _NormalcalState();
}

class _NormalcalState extends State<Normalcal> {
  // TextEditingController _basiccal = TextEditingController();
  var userinput = "";
  var useranswer = "";
  var finaluserinput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Basic Calculator',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.yellowAccent,
        ),),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children : [
              Container(

                  // color: Colors.red,
                  height: 60,
                  width: 420,
                  alignment: Alignment.centerRight,
                  child: Text(userinput,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),),
                ),
                Container(
                  // color: Colors.blue,
                  height: 50,
                  width: 420,
                  alignment: Alignment.centerRight,
                  child: Text(useranswer,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),),
                ),
        ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 15,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = "";
                    useranswer = "0";
                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('AC',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput.substring(0,userinput.length-1);
                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('<-',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = "-${userinput}";
                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('+/-',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"/";
                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('/',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 25.0,),

              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width:15 ,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"1";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('1',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"2";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('2',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"3";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('3',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width:30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"+";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('+',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 25.0,),

              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 15.0,),

                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"4";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('4',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"5";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('5',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"6";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('6',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"-";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('-',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 25.0,),

              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 15.0,),

                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"7";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('7',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"8";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('8',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"9";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('9',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"*";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('x',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 25.0,),

              ],
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 15.0,),

                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"0";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('0',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +".";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('.',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +".00";

                  });
                },
                  backgroundColor: Colors.yellowAccent,
                  child: Text('.00',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 30.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    finaluserinput = calcString(userinput);
                    useranswer = finaluserinput.toString();
                    userinput = "";
                  });

                },
                  backgroundColor: Colors.orange,
                  child: Text('=',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                SizedBox(width: 25.0,),

              ],
            ),
            SizedBox(height: 30.0,),
          ],
        ),
      ),
    );
  }
}
