

import 'package:dartz/dartz.dart';
import 'package:newbookapp/errors/failuer.dart';
import 'package:newbookapp/modelapp/api/api_service.dart';
import 'package:newbookapp/modelapp/bookmodel/bookmodel.dart';

abstract class homerepo{
  homerepo(apisrvice apisrvice);



  
  Future<Either<failuer,List<Bookmodel>>> feturlistvewbook(  
    );
    Future<Either<failuer,List<Bookmodel>>> feturbestsallerbook();
    Future<Either<failuer,List<Bookmodel>>> feturdetalesbook({
      required String catogrY
    });


}