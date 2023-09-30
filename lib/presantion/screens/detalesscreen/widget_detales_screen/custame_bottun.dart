// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class castombottun extends StatelessWidget {
  const castombottun({
    Key? key,
    required this.onPressed,
    required this.backgroundColor,
    required this.textcolor,
    this.borderradius,
    required this.nametext,
  }) : super(key: key);
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textcolor;
  final BorderRadius? borderradius;
  final String nametext;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
         backgroundColor:backgroundColor
         ,shape: RoundedRectangleBorder(
          borderRadius:borderradius?? BorderRadius.circular(16),
         )
      ),
       child:  Text('$nametext',
       
       style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w900,
        color: textcolor,

       ),
       )
       );
  }
}
