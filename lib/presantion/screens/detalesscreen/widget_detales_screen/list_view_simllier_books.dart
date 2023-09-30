// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/itiem_datales.dart';
import 'package:newbookapp/presantion/screens/detalesscreen/widget_detales_screen/semaller_books.dart';
import 'package:newbookapp/widgets/custom_error_masage.dart';

import '../../../../cubitApp/cubit/fetchur_deatals_book_cubit.dart';

class listvewidetaksbook extends StatelessWidget {
  const listvewidetaksbook({
    Key? key,
    required this.booker,
  }) : super(key: key);
  final Bookmodel booker;
  @override
  Widget build(BuildContext context) {
                return BlocBuilder<FetchurDeatalsBooCubit, FetchurDeatalsBookState>(
  builder: (context, state) {
    if(state is FetchurDeatalsBooksucsess){
      return Column(
        children: [
           
          SizedBox(
                              height: MediaQuery.of(context).size.height * .19,
                              
                              child: ListView.builder(
                                itemCount: state.books.length ,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: semllierlistvewbppks(
                            bookmodel: state.books[index],
                          ),
                        );
                      }),
          ),
        ],
      );                    
                                           
                    
             
              }
  else if(state is FetchurDeatalsBookerror ){
   return customerrormasage(Errormasagge:state.errormasage);
         }else{
         return const Center(child: CircularProgressIndicator());
         }
      } 
               );
         
  
         }
}
