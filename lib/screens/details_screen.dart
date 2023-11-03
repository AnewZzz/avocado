import 'package:avacado_blog_app/config/export_config.dart';
import 'package:avacado_blog_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.title, required this.desc})
      : super(key: key);

  final String title;
  final String desc;
  final String youtubeVideoId = 'BgLcbFwZ8JU';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 250.h,
            child: WebView(
              initialUrl: 'https://www.youtube.com/embed/$youtubeVideoId',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CompanyContainer(color: CgColor.youtube, logo: "${CgConstant.logoFolderPath}/youtubew.svg", text: 'YouTube'),
                    Text('1 hours ago', style:  TextStyle(fontSize: 10),)
                  ],
                ),
               
                SizedBox(
                  height: 6.h,
                ),
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  desc,
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
