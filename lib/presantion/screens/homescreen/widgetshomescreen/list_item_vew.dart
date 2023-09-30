// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:newbookapp/cubitApp/fetuchar_book_cubit/cubit/vew_all_books_cubit.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/widgets/custom_error_masage.dart';

import 'itiem_vew_book.dart';

class listviwebulder extends StatelessWidget {
  const listviwebulder({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VewAllBooksCubit,VewAllBooksState>(
      builder: (context, state){
       if (state is VewAllBooksSacsuss) {
  return  SizedBox(
   height: MediaQuery.of(context).size.height * .24,
   child: ListView.builder(
          itemCount: state.books.length,
       
       itemBuilder: (context, index) {
         return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 8),
           child: itiembookviwe(
            bookmodel: state.books[index], 
           ),
         );
       }),
        );
          }else if(state is VewAllBooksError){
        return customerrormasage(Errormasagge:state.errormasage);
         }else{
         return Center(child: CircularProgressIndicator());
         }
      
      }
      
    );
  }
}
