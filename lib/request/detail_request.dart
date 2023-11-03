import 'dart:developer';

import 'package:avacado_blog_app/model/details_model.dart';
import 'package:avacado_blog_app/request/base_request.dart';
import 'package:dio/dio.dart';

class DetailRequest extends BaseRequest{
  


Future<List<DetailsModelMeta>?> getDetails({int? playListId}) async {
  try {
    var response = await get(
      path: '/posts',
    );

    if (response.statusCode == 200) {
      List<dynamic> responseData = response.data;
      List<DetailsModelMeta> detailsList = responseData
          .map((item) => DetailsModelMeta.fromJson(item))
          .toList();
          
      return detailsList;
    } else {
     
      return null;
    }
  } on DioError catch (e) {
    log(e.message.toString());
    return null;
  }
}

 
}




  