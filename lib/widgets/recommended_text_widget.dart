import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RecommendedText extends StatelessWidget {
  const RecommendedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Recommended".toUpperCase(),
          style: GoogleFonts.poppins(
              fontSize: 17,
              color: const Color.fromARGB(255, 86, 86, 86),
              fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                "View All",
                style: GoogleFonts.poppins(fontSize: 17),
              ),
              const Icon(Icons.arrow_right_alt_rounded, size: 22),
            ],
          ),
        ),
      ],
    );
  }
}
