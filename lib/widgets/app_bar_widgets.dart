import 'package:avacado_blog_app/config/export_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidgets extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? iconImage;
  final VoidCallback? onTap;

  const AppBarWidgets({Key? key, required this.title,  this.iconImage, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: CgColor.white, fontWeight: CgFontWeight.bold),
      ),
      leading:  IconButton(onPressed: onTap ,
      icon: const Icon(
        Icons.keyboard_arrow_left,
        color: CgColor.white, 
        size: 30),),
      backgroundColor: CgColor.primary,
      elevation: 0.0,
      centerTitle: false,
      actions: [
        iconImage ?? SvgPicture.asset("${CgConstant.iconFolderPath}/Search.svg", width: 20, height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SvgPicture.asset("${CgConstant.iconFolderPath}/share_icon.svg", width: 20, height: 20),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
