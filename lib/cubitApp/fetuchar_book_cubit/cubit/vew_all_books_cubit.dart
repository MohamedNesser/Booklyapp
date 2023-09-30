// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/modelapp/repostry/book_reposrtry.dart';

part 'vew_all_books_state.dart';

class VewAllBooksCubit extends Cubit<VewAllBooksState> {
  VewAllBooksCubit(
    this.HomeRebo,
  ) : super(VewAllBooksInitial());
  // ignore: non_constant_identifier_names
  final homerepo HomeRebo;

  // ignore: non_constant_identifier_names
  Future<void>Fetchallbooks()async{
    emit(VewAllBooksLoading());
 var result= await HomeRebo.feturlistvewbook();
  result.fold((failuer) {
    emit(VewAllBooksError(failuer.errormassage));
  }, (books) {
  emit(VewAllBooksSacsuss(books));
  });
  }
}
