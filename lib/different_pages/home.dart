import 'package:flutter/material.dart';
import 'package:mycalculatorhighversion/calculator.dart';
import 'package:mycalculatorhighversion/different_pages/app_constants.dart';
// import 'dart:js';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Cal> locations  = [
    Cal(type: 'Basic Calculator',image:'basiccal.png' ),
    Cal(type: 'Intermediate Calculator',image:'intermediate.png' ),
    Cal(type: 'Scientific Calculator',image:'advancedcal.png' ),
    Cal(type: 'Liquid Conversion',image:'liquid.png' ),
    Cal(type: 'Distance Conversion',image:'distance.png' ),
    Cal(type: 'Tax Identifier',image:'tax.png' ),
    Cal(type: 'Body Mass Index Calculator',image:'bmi.png' ),
    Cal(type: 'Simple and Compound Interest Calculator',image:'sci.png' ),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('Calculator Types',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
            color: Colors.yellowAccent,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context,index){
            return Padding(padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
              child: Card(
                color: Colors.grey[900],
                child: ListTile(
                  onTap: () {
                    if(index == 0){
                      Navigator.pushNamed(context,'/normalcal');
                    }
                    else if(index == 1){
                      Navigator.pushNamed(context,'/intermediatecal');
                    }
                    else if(index == 2){
                      Navigator.pushNamed(context,'/advancedcal');
                    }else if(index == 3){
                      Navigator.pushNamed(context,'/liquid');
                    }else if(index == 4){
                      Navigator.pushNamed(context,'/distance');
                    }else if(index==5){
                      Navigator.pushNamed(context,'/taxcal');
                    }else if(index== 6){
                      Navigator.pushNamed(context,'/bmical');
                    }else if(index == 7){
                      Navigator.pushNamed(context,'/simpleandcompound');
                    }
                  },
                  title: Text(locations[index].type,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: Colors.yellowAccent,
                  ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].image}'),
                  ),
                ),
              ),
            );

          },
          ),
      backgroundColor: Colors.black,
    );
  }
}
