import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:avacado_blog_app/config/cg_color.dart';
import 'package:avacado_blog_app/config/cg_font.dart';
import 'package:avacado_blog_app/config/cg_constant.dart';

class CompanyContainer extends StatelessWidget {
  const CompanyContainer({
    super.key,
    required this.color,
    required this.logo,
    required this.text,
  });

  final Color? color;
  final String? logo;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 90.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
      color:  color ?? CgColor.youtube ,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset( logo ?? "${CgConstant.logoFolderPath}/youtubew.svg"  , width: 20.w, height: 18.h),
           Text( text ?? 'YouTube' , style: 
          const TextStyle(
            color: CgColor.white, 
            fontSize: 12, 
            fontWeight: CgFontWeight.regular),),
        ],
      ),
    );
  }
}