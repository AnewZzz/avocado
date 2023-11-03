import 'package:avacado_blog_app/config/cg_color.dart';
import 'package:avacado_blog_app/config/cg_font.dart';
import 'package:flutter/material.dart';

ThemeData cgTheme() {
  return ThemeData(
    scaffoldBackgroundColor: CgColor.white,
    fontFamily: CgFontFamily.fontFamily,
    primaryColor: CgColor.primary, 
  );

}