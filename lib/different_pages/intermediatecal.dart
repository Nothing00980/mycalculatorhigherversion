import 'package:flutter/material.dart';
import 'package:mycalculatorhighversion/calculation.dart';

class Intermediate extends StatefulWidget {
  const Intermediate({Key? key}) : super(key: key);

  @override
  State<Intermediate> createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  var userinput = "";
  var useranswer = "";
  var finaluserinput;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Intermedaite calculator',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children : [
                Container(

                  // color: Colors.red,
                  height: 50,
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width: 15,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = "";
                    useranswer = "0";
                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('AC',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput.substring(0,userinput.length-1);
                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('<-',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = "-${userinput}";
                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('+/-',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"/";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('/',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){

                  userinput = userinput +"@";

                },
                  backgroundColor: Colors.red[900],
                  child: Text('log',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),


              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width:15 ,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"1";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('1',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"2";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('2',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"3";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('3',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"+";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('+',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput + "√";
                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('√',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),

              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width: 15.0,),

                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"4";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('4',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"5";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('5',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"6";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('6',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"-";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('-',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  userinput = userinput + "e";
                },
                  backgroundColor: Colors.red[900],
                  child: Text('ln',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),

              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width: 15.0,),

                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"7";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('7',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"8";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('8',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"9";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('9',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"*";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('x',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput + "^";
                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('x^y',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),

              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width: 15.0,),

                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +"0";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('0',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.red[900],
                  child: Text('.',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    userinput = userinput +".00";

                  });
                },
                  backgroundColor: Colors.red[900],
                  child: Text('.00',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
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
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.red[900],
                  child: Text('x√y',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),

              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // SizedBox(width: 15.0,),

                FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.red[900],
                  child: Text('%',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.red[900],
                  child: Text('sin',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.red[900],
                  child: Text('cos',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.red[900],
                  child: Text('tan',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                // SizedBox(width: 25.0,),
                FloatingActionButton(onPressed: (){},
                  backgroundColor: Colors.red[900],
                  child: Text('e^y',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),),
                  elevation: 2.0,
                ),
                ],
            ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(width: 15.0,),

                    FloatingActionButton(onPressed: (){},
                      backgroundColor: Colors.red[900],
                      child: Text('(',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),),
                      elevation: 2.0,
                    ),
                    // SizedBox(width: 25.0,),
                    FloatingActionButton(onPressed: (){},
                      backgroundColor: Colors.red[900],
                      child: Text(')',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),),
                      elevation: 2.0,
                    ),
                    // SizedBox(width: 25.0,),
                    FloatingActionButton(onPressed: (){},
                      backgroundColor: Colors.red[900],
                      child: Text('cos',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),),
                      elevation: 2.0,
                    ),
                    // SizedBox(width: 25.0,),
                    FloatingActionButton(onPressed: (){},
                      backgroundColor: Colors.red[900],
                      child: Text('tan',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),),
                      elevation: 2.0,
                    ),
                    // SizedBox(width: 25.0,),
                    FloatingActionButton(onPressed: (){},
                      backgroundColor: Colors.red[900],
                      child: Text('e^y',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),),
                      elevation: 2.0,
                    ),




              ],
            ),
          ],
        ),
      ),
    );
  }
}
