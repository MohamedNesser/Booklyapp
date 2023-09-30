// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:dio/dio.dart';

class apisrvice {
    final baseurl='https://www.googleapis.com/books/v1/';
    final Dio dio;
  apisrvice(this.dio,);

   Future<Map<String,dynamic>>getall({required String endurl})async{
    var Response=await dio.get('$baseurl$endurl');
     return Response.data;
   }
    
  } 
