// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/custame_bottun.dart';
import 'package:url_launcher/url_launcher.dart';

class booksaller extends StatelessWidget {
  const booksaller({
    Key? key,
    required this.bookmodel,
  }) : super(key: key);
final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: castombottun(
            onPressed: (){
              
            },
            nametext: '99.99c',
            backgroundColor: Colors.white,
            textcolor: Colors.black ,
            borderradius: BorderRadius.only(
             topLeft: Radius.circular(10),
             bottomLeft: Radius.circular(10)
                   ),
          ),
        ),
        Expanded(
          child: castombottun(
           onPressed: () async{
    Uri url=Uri.parse(bookmodel.volumeInfo.previewLink!);
              if (await canLaunchUrl(url)) {
         await  launchUrl(url);
                     }
            },
            nametext:'free Prevewi',
            backgroundColor: Color.fromARGB(255, 238, 123, 123),
            textcolor: Colors.white ,
            borderradius: BorderRadius.only(
             topRight: Radius.circular(10),
             bottomRight: Radius.circular(10)
                   ),
          ),
        )
      ],
    );
  }
}
