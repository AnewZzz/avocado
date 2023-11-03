import 'package:avacado_blog_app/config/export_config.dart';
import 'package:avacado_blog_app/provider/details_provider.dart';
import 'package:avacado_blog_app/screens/details_screen.dart';
import 'package:avacado_blog_app/widgets/custom_shimmer.dart';
import 'package:avacado_blog_app/widgets/export_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: 
         const AppBarWidgets(title: 'Video',),
        body:  DefaultTabController(
          length: 5,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 50, 
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 12),
                      blurRadius: 8,
                      color: CgColor.black.withOpacity(0.12)
                    )
                  ]
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    color: CgColor.white,
                    child: const TabBar(
                      isScrollable: true,
                      indicatorColor: CgColor.primary,
                      indicatorPadding: EdgeInsets.only(bottom: 5),
                      labelColor: CgColor.primary,
                      unselectedLabelColor: CgColor.black, 
                      tabs: [
                        Tab( child: Text('Treanding', style:  TextStyle(fontWeight: CgFontWeight.medium, fontSize: 12),), ),
                        Tab( child: Text('latest Videos', style:  TextStyle(fontWeight: CgFontWeight.medium, fontSize: 12),), ),
                        Tab( child: Text('All Videos', style:  TextStyle(fontWeight:  CgFontWeight.medium, fontSize: 12),), ),
                        Tab( child: Text('News Videos', style:  TextStyle(fontWeight:  CgFontWeight.medium, fontSize: 12),), ),
                        Tab( child: Text('Dance Videos', style:  TextStyle(fontWeight:  CgFontWeight.medium, fontSize: 12),), ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Consumer<DetailsProvider>(
                  builder: (context, detailProv, child) {
                    
                    
                    
                    if ( detailProv.isLoading){
                       return CustomShimmers.listView(
                        
                              scrollDirection: Axis.vertical,
                              itemCount: 6,
                              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.07, vertical: MediaQuery.of(context).size.width *0.04),
                              height: 200.h,
                              width: MediaQuery.of(context).size.width * 0.43,
                              seperator: 10.h);
                    } 
                    else if (detailProv.detailsModelList == null) {
                      return const Center(child: Text('Data Empty'));
                    }
                    return TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Padding(
                            padding:  const EdgeInsets.only(top: 15,  bottom: 10, left: 10, right: 10 ),
                            child: 
                            Wrap(
                              spacing: 10.h,
                              runSpacing: 10.h,
                              alignment: WrapAlignment.start,
                              children: [
                                ... List.generate(detailProv.detailsModelList!.length, (index) {
                                List<Color> colors = [CgColor.youtube, CgColor.facebook, CgColor.abc, CgColor.topnews]; 
                                List<String> icons = ["${CgConstant.logoFolderPath}/youtubew.svg","${CgConstant.logoFolderPath}/facebookw.svg","${CgConstant.logoFolderPath}/abcw.svg","${CgConstant.logoFolderPath}/topnewsw.svg"]; 
                                List<String> texts = ["YouTube","Facebook","ABC","TopNews"]; 
                                Color selectedColor = colors[index % colors.length];
                                String icon = icons[index % icons.length];
                                String text = texts[index % texts.length];
                                return Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  
                                          DetailScreen(
                                            title: detailProv.detailsModelList![index].title ?? '', desc: detailProv.detailsModelList![index].body ?? '',)),
                                            );
                                            },
                                            child: NewsContainer(
                                              title: detailProv.detailsModelList![index].title ?? '',
                                              text: text,
                                              color: selectedColor, 
                                              logo: icon,
                                              ),
                                      ),
                                    ],
                                  );
                              })
                              ],
                            ),
                          ),
                        ),
                        const Center(child: Text('Latest Video')),
                        const Center(child: Text('All Video')),
                        const Center(child: Text('News Video')),
                        const Center(child: Text('Dance Video ')),
                      ],
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




