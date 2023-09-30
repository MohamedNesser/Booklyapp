part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}
final class VewAllnewsetBooksLoading extends NewsetBooksState {}
final class VewAllnewsetBooksSacsuss extends NewsetBooksState {
  final List<Bookmodel>books;

  const VewAllnewsetBooksSacsuss(this.books);
}
final class VewAllnewsetBooksError extends NewsetBooksState {
  final String errormasage;

  VewAllnewsetBooksError(this.errormasage);
}
