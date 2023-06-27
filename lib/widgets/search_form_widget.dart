import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchFormWidget extends StatelessWidget {
  const SearchFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        hintStyle: GoogleFonts.jost(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 18),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
