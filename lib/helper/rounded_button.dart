import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RoundedButton extends StatelessWidget{

  final Color color;
  final String label;
  final Function onPressed;


  RoundedButton({required this.color, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: (){
        this.onPressed();
      },
      child: Text(
        this.label,
        style: TextStyle(
            color: Colors.white
        ),
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
          backgroundColor: this.color,
          shadowColor: Colors.black,
          elevation: 10.0
      ),
    );
  }
}