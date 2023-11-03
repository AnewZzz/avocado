


import 'package:avacado_blog_app/model/details_model.dart';
import 'package:avacado_blog_app/request/detail_request.dart';
import 'package:flutter/material.dart';

class DetailsProvider extends ChangeNotifier {
  List<DetailsModelMeta>? detailsModelList;

  Future<void> fetchDetailDatas() async {
    final allDetailDatas = await DetailRequest().getDetails();

    detailsModelList = allDetailDatas;
    notifyListeners();
  }
}

