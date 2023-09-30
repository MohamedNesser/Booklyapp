// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';

import '../../modelapp/repostry/book_reposrtry.dart';

part 'fetchur_deatals_book_state.dart';

class FetchurDeatalsBooCubit extends Cubit<FetchurDeatalsBookState> {
  FetchurDeatalsBooCubit(
    this.Homerebo,
  ) : super(FetchurDeatalsBooInitial());

  final homerepo Homerebo;
   
  // ignore: non_constant_identifier_names
  Future<void>Fetchdetaleslesbooks({required String catogry})async{
    emit(FetchurDeatalsBookloading());
 var result=await  Homerebo.feturdetalesbook(catogrY:catogry);
  result.fold((failuer) {
    emit(FetchurDeatalsBookerror(failuer.errormassage));
  }, (books) {
  emit(FetchurDeatalsBooksucsess(books));
  });
  }
}

