import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/search_form_widget.dart';
import '../widgets/tile_widget.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 228, 228),
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: ListView(
          children: [
            Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 35.0, top: 25, bottom: 15),
                child: Text(
                  "Let's Find Your Dream Job",
                  style: GoogleFonts.jost(
                    fontSize: 37,
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 17, 115, 64),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 15,left: 15, right: 15),
                child: SearchFormWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                child: Row(
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
                          Text("View All", style: GoogleFonts.poppins(fontSize: 17),),
                          const Icon(Icons.arrow_right_alt_rounded, size: 22),
                        ],
                      ),
                      ),
                  ],
                ),
              ),
                
                    
            ],
          ),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          const TileWidgets(),
          ],
        ),
      bottomNavigationBar: const BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Color.fromARGB(255, 201, 204, 202),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 17, 115, 64),
                  ),
                  Text("Home", style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0,top: 10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.format_align_center,
                    color: Color.fromARGB(255, 17, 115, 64),
                  ),
                  Text("Listings", style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Color.fromARGB(255, 17, 115, 64),
                  ),
                  Text("Favorites", style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 17, 115, 64),
                  ),
                  Text("Settings", style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),),
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
