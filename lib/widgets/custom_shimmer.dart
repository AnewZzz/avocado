import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../config/cg_color.dart';

class CustomShimmers {

  static Widget listView({
    double height = 150,
    double width = 100,
    int itemCount = 2,
    Axis scrollDirection = Axis.horizontal,
    EdgeInsets? padding,
    double seperator = 10.0,
  }) {
    return Shimmer.fromColors(
      baseColor: CgColor.darkGray.withOpacity(0.125),
      highlightColor: const Color.fromARGB(255, 247, 243, 243),
      child: SizedBox(
        height: scrollDirection == Axis.horizontal ? height : null,
        child: ListView.separated(
          padding: padding,
          shrinkWrap: true,
          scrollDirection: scrollDirection,
          itemCount: itemCount,
          separatorBuilder: (context, index) => SizedBox(
            width: seperator,
            height: seperator,
          ),
          itemBuilder: (context, index) => Row(
            children: [
              SizedBox(
                width: width,
                height: height,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              SizedBox(
                width: width,
                height: height,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              
            ],
          ),
        ),
      ),
    );
  }

 
}
