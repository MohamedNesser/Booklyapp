

import 'package:flutter/material.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/appbar_detales.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/book_saller.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/itiem_datales.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/list_view_simllier_books.dart';

class bodydtales extends StatelessWidget {
  const bodydtales({Key? key, required this.bookmodel}) : super(key: key);
final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
            const appbardetales(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child:  itiemdetales(
                    bookmodel:bookmodel,
                  ),
                ),
                 SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: booksaller(
                    bookmodel: bookmodel,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "new book isavalebael",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                listvewidetaksbook(
                  booker: bookmodel,
                ),
              ],
            ),
          );
          
        
  }
}