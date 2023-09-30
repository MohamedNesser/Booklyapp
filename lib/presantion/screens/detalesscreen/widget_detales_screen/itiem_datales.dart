// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/Book_rateng.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/custom_book_image.dart';

// ignore: camel_case_types
class itiemdetales extends StatelessWidget {
   itiemdetales({
    Key? key,
    required this.bookmodel,
  }) : super(key: key);
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     child: Column(
        children: [
         AspectRatio(
        aspectRatio: 3 / 4,
        child: CustomBookImage(imageUrl:bookmodel.volumeInfo.imageLinks.thumbnail)
      ),
      const SizedBox(
        height: 10,
      ),
         Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    bookmodel.volumeInfo.title!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                 Text(
                  bookmodel.volumeInfo.authors![0],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                 bookrate(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rate:bookmodel.volumeInfo.averageRating ??0 ,
                  count:bookmodel.volumeInfo.pageCount ??0,
                )
   
        ],
      )
       
       );
  }
}
