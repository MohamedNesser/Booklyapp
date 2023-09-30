import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/Book_rateng.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/appbar_detales.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/body_detales.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/book_saller.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/itiem_datales.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/list_view_simllier_books.dart';
import 'package:newbookapp/widgets/custom_error_masage.dart';

import '../../../cubitApp/cubit/fetchur_deatals_book_cubit.dart';

// ignore: camel_case_types
class detalsscreen extends StatefulWidget {
  const detalsscreen({Key? key, required this.bookModel}) : super(key: key);
 final Bookmodel bookModel;
  @override
  State<detalsscreen> createState() => _detalsscreenState();
}

class _detalsscreenState extends State<detalsscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FetchurDeatalsBooCubit>(context).Fetchdetaleslesbooks(
      catogry:widget.bookModel.volumeInfo.categories![0]
    );
  }

  @override
  Widget build(BuildContext context) {
   
      return   Scaffold(
        body: SafeArea(
          
            child: bodydtales(
              bookmodel: widget.bookModel,
            ),
           
        )  );
     
      }
 
     
    
  
}

