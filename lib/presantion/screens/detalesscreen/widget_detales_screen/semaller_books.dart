// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/custom_book_image.dart';

class semllierlistvewbppks extends StatelessWidget {
  const semllierlistvewbppks({
    Key? key,
    required this.bookmodel,
  }) : super(key: key);
     final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
   
      return SizedBox(
        child: AspectRatio(
          aspectRatio: 2.8 / 4,
          child: CustomBookImage(
            imageUrl: bookmodel.volumeInfo.imageLinks.thumbnail,
          )
        ),
      );
   
      } 
    

}
