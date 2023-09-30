// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class customerrormasage extends StatelessWidget {
  const customerrormasage({
    Key? key,
    required this.Errormasagge,
  }) : super(key: key);
  final String Errormasagge;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(Errormasagge,style: TextStyle(fontSize: 16,color: Colors.red),));
  }
}
