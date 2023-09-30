 
 import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:newbookapp/errors/failuer.dart';
import 'package:newbookapp/modelapp/api/api_service.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';
import 'package:newbookapp/modelapp/repostry/book_reposrtry.dart';

class Homerebo implements homerepo{
  final apisrvice ApiServices;

  Homerebo(this.ApiServices);
  @override
  Future<Either<failuer, List<Bookmodel>>> feturbestsallerbook() async{
    try {
  var data=await  ApiServices.getall(endurl: 'volumes?q=movie&Filtering=free-ebooks');
    List <Bookmodel>books=[];
    for (var item in data['items'] ) {
      try {
  books.add(Bookmodel.fromJson(item));
}   catch (e) {
 print(item);
}
      
    } return right(books);
}  catch (e) {
if(e is DioError){
    return left(websrvicefailuer.FromDioError(e));
    }
    return left(websrvicefailuer(e.toString()));

}
      
  }

  @override
  Future<Either<failuer, List<Bookmodel>>> feturlistvewbook() async{
     try {
  var data=await  ApiServices.getall(endurl: 'volumes?Sorting=newest &q=movie&Filtering=free-ebooks');
    List <Bookmodel>books=[];
    for (var item in data['items'] ) {
      try {
  books.add(Bookmodel.fromJson(item));
}  catch (e) {
    print(item);
    }
      
    } return right(books);
}  catch (e) {
if(e is DioError){
    return left(websrvicefailuer.FromDioError(e));
    }
    return left(websrvicefailuer(e.toString()));
  }


  }
  
  @override
  Future<Either<failuer, List<Bookmodel>>> feturdetalesbook({required String catogrY})async {
   
     try {
  var data=await  ApiServices.getall(endurl: 'volumes?Sorting=relevance&q=movie&Filtering=free-ebooks');
    List <Bookmodel>books=[];
    for (var item in data['items'] ) {
      try {
  books.add(Bookmodel.fromJson(item));
}  catch (e) {
    print(item);
    }
      
    } return right(books);
}  catch (e) {
if(e is DioError){
    return left(websrvicefailuer.FromDioError(e));
    }
    return left(websrvicefailuer(e.toString()));
  }


  }
  
  }

  