// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/modelapp/repostry/book_reposrtry.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(
    this.Homerebo,
  ) : super(NewsetBooksInitial());

   final homerepo Homerebo;
   
  // ignore: non_constant_identifier_names
  Future<void>Fetchallnewstbooks()async{
    emit(VewAllnewsetBooksLoading());
 var result=await  Homerebo.feturbestsallerbook();
  result.fold((failuer) {
    emit(VewAllnewsetBooksError(failuer.errormassage));
  }, (books) {
  emit(VewAllnewsetBooksSacsuss(books));
  });
  }
}
