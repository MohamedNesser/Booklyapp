// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';

// ignore: camel_case_types
class itiembookviwe extends StatelessWidget {
  const itiembookviwe({
    Key? key,
    required this.bookmodel,
  }) : super(key: key);
  final Bookmodel bookmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push('/detalesscreen',extra: Bookmodel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          child: AspectRatio(
            aspectRatio: 2.8 / 4,
            child: CachedNetworkImage(
              imageUrl:bookmodel.volumeInfo.imageLinks.thumbnail,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => Icon(Icons.error),
      
            ) 
             ),
        ),
      ),
    );
  }
}
