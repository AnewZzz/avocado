import 'package:avacado_blog_app/widgets/company_conatiner.dart';
import 'package:flutter/material.dart';
import 'package:avacado_blog_app/config/export_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,  this.text,  this.color,  this.logo, this.title, 
  });
  final String? text;
  final Color? color;
  final String? title;
  final String? logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.33,
      width: MediaQuery.of(context).size.width*.45,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        
        border: Border.all(color: CgColor.bordercolor.withOpacity(0.51), width: 1),
        borderRadius: BorderRadius.circular(11), 
      ),
      child: Column(
        // mainAxisAlignment: main,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(
            height: 40.h,
             child: Text( title ?? '',
             maxLines: 3,
             overflow: TextOverflow.ellipsis,
                     style: const TextStyle( 
              fontWeight: CgFontWeight.bold, 
              fontSize: 12, 
              decoration: TextDecoration.underline),),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CompanyContainer(color: color, logo: logo, text: text),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('1 hour ago', style: TextStyle(fontSize: 10),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Image.asset('${CgConstant.imageFolderPath}/image.png', height: MediaQuery.of(context).size.height * 0.2, width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
            )
        ],
      ),
      
    );
  }
}

