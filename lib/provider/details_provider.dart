


import 'package:avacado_blog_app/model/details_model.dart';
import 'package:avacado_blog_app/request/detail_request.dart';
import 'package:flutter/material.dart';

class DetailsProvider extends ChangeNotifier {
  List<DetailsModelMeta>? detailsModelList;
  bool isLoading = false;

  toggleLoading(bool newLoading) {
    isLoading = newLoading;
    notifyListeners();
  }

  Future<void> fetchDetailDatas() async {
    toggleLoading(true);
    final allDetailDatas = await DetailRequest().getDetails();
    toggleLoading(false);
    detailsModelList = allDetailDatas;
    notifyListeners();
  }
}

