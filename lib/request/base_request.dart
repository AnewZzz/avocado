import 'package:dio/dio.dart';
import 'package:avacado_blog_app/config/export_config.dart';



class BaseRequest{
  Future<Response> get(
      {Map<String, dynamic>? queryParameters,
      required String path,
      String? paginationUrl}) async {    
      final Dio dio = Dio(
        BaseOptions(
          baseUrl: CgConstant.baseUrl,
        ),
      );
      Response response = await dio.get(
        path,
        queryParameters: queryParameters,
      );
      return response;
    }

  //   Future<Response> post({
  //   Map<String, dynamic>? queryParameters,
  //   dynamic data,
  //   required String path,
  // }) async {
    
  //   final Dio dio = Dio(
  //     BaseOptions(
  //       baseUrl: cgConstant.baseUrl,
  //     ),
  //   );
  //   Response response = await dio.post(
  //     path,
  //     queryParameters: queryParameters,
  //     data: data,
  //   );
  //   return response;
  // }
}

