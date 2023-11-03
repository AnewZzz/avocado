import 'package:avacado_blog_app/config/cg_theme.dart';
import 'package:avacado_blog_app/provider/details_provider.dart';
import 'package:avacado_blog_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());

  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_)=> DetailsProvider()..fetchDetailDatas())
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Depot',
              theme: cgTheme(),
              
              home: const HomeScreen(),
            ),
          );
        });
  }
}


//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       child: MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create (_) => DetailsProvider());
//         ],
//         child: MaterialApp(
      
//           title: 'Avacado Blog  ',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
           
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//             useMaterial3: true,
//           ),
//           home: const HomeScreen(),
//         ),
//       ),
//     );
//   }
// }

