
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newbookapp/cubitApp/fetchur_newset_book/cubit/newset_books_cubit.dart';
import 'package:newbookapp/presantion/screens/homescreen/widgetshomescreen/best_salle_itiem.dart';

import '../../../../widgets/custom_error_masage.dart';

class Bestsallerlistviewbulder extends StatelessWidget {
  const Bestsallerlistviewbulder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit,NewsetBooksState>(
        builder: (context, state) {
          if (state is VewAllnewsetBooksSacsuss) {
              return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: state.books.length,
                      itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: downitiemvewbulder(
                  bookmodel: state.books[index],
                ),
              );
                      },
              
                    );
}
else if(state is VewAllnewsetBooksError ){
   return customerrormasage(Errormasagge:state.errormasage);
         }else{
         return const Center(child: CircularProgressIndicator());
         }

        },
  
      
    );
  }
}
