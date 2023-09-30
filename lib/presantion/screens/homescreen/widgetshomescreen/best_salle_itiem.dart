// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:newbookapp/constant.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/Book_rateng.dart';

// ignore: camel_case_types
class downitiemvewbulder extends StatelessWidget {
  const downitiemvewbulder({
    Key? key,
    required this.bookmodel,
  }) : super(key: key);
 final Bookmodel bookmodel;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/detalesscreen",extra: bookmodel);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .17,
        child: Row(
          children: [
            SizedBox(
              child: CachedNetworkImage(
                imageUrl:bookmodel.volumeInfo.imageLinks.thumbnail,
                 fit: BoxFit.fill,
          errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child:  Text(
                        bookmodel.volumeInfo.title!,
                        style: style.textstyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                   Text(
                   bookmodel.volumeInfo.title!,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                   Row(
                    children: [
                      const Text(
                        "free",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      bookrate(
                       rate: bookmodel.volumeInfo.averageRating??0,
                        count: bookmodel.volumeInfo.pageCount??0,
                         mainAxisAlignment: MainAxisAlignment.start,
                           
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types