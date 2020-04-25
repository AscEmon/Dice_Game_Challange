

import 'package:flutter/material.dart';
import 'dart:math';
int _leftNumber=1;
int _rightNumber=5;
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Dicee Game',style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.transparent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

void check()
{
  Random random = new Random();
  _leftNumber = random.nextInt(6)+1;
  _rightNumber = random.nextInt(6)+1;


}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {



 @override
  Widget build(BuildContext context) {
  return Center(
        child: Row(
          children: <Widget>[
          Expanded( 
            flex:1,
      
              child: FlatButton(
                onPressed: (){
                  setState(() {
                   check();
              
                  });
            },
                child: Image.asset('images/dice$_rightNumber.png',height: 160,width: 160,),
                ),

            ), Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: (){
                  setState(() {
               
                 check();
               
                  });
                },
            child: Image.asset('images/dice$_leftNumber.png',height: 160,width: 160,),
              ),
            ),
          
          ],
        ), 
   );
  }
}

