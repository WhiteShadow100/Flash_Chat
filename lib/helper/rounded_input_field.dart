import 'package:flash_chat/constant.dart';
import 'package:flutter/material.dart';


class RoundedInputField extends StatelessWidget{

  final String hintText;
  Function onChange;

  RoundedInputField({required this.hintText, required this.onChange});


  @override
  Widget build(BuildContext context){
    return TextField(
      textAlign: TextAlign.center,
      decoration: kTextFieldDecoration.copyWith(hintText: this.hintText),
      onChanged: (String value){
        this.onChange(value);
      },
    );
  }
}