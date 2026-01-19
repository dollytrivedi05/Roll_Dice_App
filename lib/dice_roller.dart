import 'dart:math';
import 'package:flutter/material.dart';

final random  = Random(); 
class DiceRoller extends StatefulWidget // in statefull widget we dont have buid method directly, like stateless widget
{
  const DiceRoller({super.key}); // constructor
    @override
  State<DiceRoller> createState() 
  {
    return _DiceRollerState();

  }
}

class _DiceRollerState extends State<DiceRoller>{
    
    var currentdicenumber = 1;

  void rolldice(){
    setState(() {
      currentdicenumber = random.nextInt(6)+1; // that generates random number between 1 to 6
    });
   

  }
  Widget build(context)
  {
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset('assets/images/dice-$currentdicenumber.png',
          width : 200,
          ),
        //  SizedBox(height: 20), // to give space between image and button atlernate of padding 
          TextButton(
            style: TextButton.styleFrom( 
              padding: EdgeInsets.all(20),  // for padding between button and text
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            onPressed: rolldice, // here onpressed is containing roll dice function or any function whihc we want to call on button press
          child: Text("Roll Dice "),// here child of textbutton is containing any  widget 
           ),
          ],
          );

  }
}
 