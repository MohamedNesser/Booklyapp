part of 'fetchur_deatals_book_cubit.dart';

sealed class FetchurDeatalsBookState extends Equatable {
  const FetchurDeatalsBookState();

  @override
  List<Object> get props => [];
}

final class FetchurDeatalsBooInitial extends FetchurDeatalsBookState {}
final class FetchurDeatalsBookloading extends FetchurDeatalsBookState {}
final class FetchurDeatalsBooksucsess extends FetchurDeatalsBookState {
   final List<Bookmodel>books;

  FetchurDeatalsBooksucsess(this.books);
}
final class FetchurDeatalsBookerror extends FetchurDeatalsBookState {
  final String errormasage;

  FetchurDeatalsBookerror(this.errormasage);

}


