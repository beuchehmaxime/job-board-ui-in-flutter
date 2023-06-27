import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


class HomeTextWidget extends StatelessWidget {
  final String mainText;
  final FontWeight fontWeight;
  final double fontSize;
  final Color colorUse;
  const HomeTextWidget({
    super.key,
    required this.mainText,
    required this.fontSize,
    required this.fontWeight,
    required this.colorUse,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      mainText,
      textAlign: TextAlign.center,
      style:  GoogleFonts.jost(        
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: colorUse,
          height: 1.1
      ),
    );
  }
}
