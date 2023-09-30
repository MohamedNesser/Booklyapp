// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bookrate extends StatelessWidget {
  const bookrate({
    Key? key,
     this.mainAxisAlignment=MainAxisAlignment.start,
    required this.rate,
    required this.count,
  }) : super(key: key);
   final MainAxisAlignment mainAxisAlignment;
   final num rate;
   final int count;
  @override
  Widget build(BuildContext context) {
    return  Row(
       mainAxisAlignment: mainAxisAlignment ,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6
        ),
        Text(
          rate.toString(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          "($count) ",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
