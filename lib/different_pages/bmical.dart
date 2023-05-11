import 'package:mycalculatorhighversion/Widgets/right.dart';
import 'package:mycalculatorhighversion/Widgets/left.dart';
import 'package:flutter/material.dart';
class bmical extends StatefulWidget {
  const bmical({Key? key}) : super(key: key);

  @override
  State<bmical> createState() => _bmicalState();
}

class _bmicalState extends State<bmical> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult  =  "";
  // String Bgimage;
  // String bgimagedata(double _bmiResult){
  //   if(_bmiResult>25){
  //     Bgimage = 'assets/fat.png';
  //   }
  //   else if(_bmiResult>=18.5 && _bmiResult<=25){
  //     Bgimage = 'assets/fit.png';
  //   }
  //   else{
  //     Bgimage = 'assets/thin.png';
  //   }
  //   return Bgimage;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,

      ),
      backgroundColor: Colors.red[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(// for input .
                    controller: _heightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.yellowAccent,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField( // for input .
                    controller: _weightController,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.w300,
                      color: Colors.yellowAccent,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(.8),
                      ),
                    ),
                  ),
                ),

              ],


            ),
            SizedBox(height: 30.0,),
            GestureDetector(
              onTap: (){
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w / (_h* _h);
                  if(_bmiResult>25){
                    _textResult = "You are overweight";
                  }
                  else if(_bmiResult>=18.5 && _bmiResult<=25){
                    _textResult = "you have a noraml  weight";
                  }
                  else{
                    _textResult = "You are underweight";
                  }
                });
              },
              child: Container(
                child: Text('Calculate',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.yellowAccent),),
              ),
            ),
            SizedBox(height: 50.0,),
            Container(
              child: Text(_bmiResult.toStringAsFixed(2),style: TextStyle(fontSize: 80,color: Colors.yellowAccent),),
            ),
            SizedBox(height: 30,),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Container(
                child: Text(_textResult,style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.yellowAccent),),
              ),
            ),
            // CircleAvatar(
            //   backgroundImage: AssetImage('assets/fit.png'),
            //   radius: 40.0,
            // ),
            SizedBox(height: 10,),
            LeftBar(barwidth: 40),
            SizedBox(height: 20,),
            LeftBar(barwidth: 70),
            SizedBox(height: 20,),
            LeftBar(barwidth: 40),
            SizedBox(height: 20,),
            RightBar(barwidth: 70),
            SizedBox(height: 20,),
            RightBar(barwidth: 70),



          ],

        ),
      ),
    );
  }
}
