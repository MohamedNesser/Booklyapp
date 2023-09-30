part of 'vew_all_books_cubit.dart';

sealed class VewAllBooksState extends Equatable {
  const VewAllBooksState();

  @override
  List<Object> get props => [];
}

final class VewAllBooksInitial extends VewAllBooksState {}
final class VewAllBooksLoading extends VewAllBooksState {}
final class VewAllBooksSacsuss extends VewAllBooksState {
  final List<Bookmodel>books;

  VewAllBooksSacsuss(this.books);
}
final class VewAllBooksError extends VewAllBooksState {
  final String errormasage;

  VewAllBooksError(this.errormasage);
}


