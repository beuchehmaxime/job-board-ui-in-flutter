import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginWithButtons extends StatelessWidget {
  final IconData iconUse;
  final Color colorUse;
  final String textName;
  const LoginWithButtons({
    super.key,
    required this.colorUse,
    required this.textName,
    required this.iconUse
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(iconUse, color: colorUse,),
          Text(
            textName,
            style: GoogleFonts.roboto(
              fontSize: 15,
              color: colorUse,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}