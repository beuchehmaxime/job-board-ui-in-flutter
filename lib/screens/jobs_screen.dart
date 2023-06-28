import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/bottom_navigation_bar_widget.dart';
import '../widgets/recommended_text_widget.dart';
import '../widgets/search_form_widget.dart';
import '../widgets/tile_widget.dart';

class JobScreen extends StatelessWidget {
  JobScreen({super.key});

  final List<IconData> iconsUse = [Icons.add, Icons.add, Icons.add, Icons.add];
  final List<String> position = [
    "UI/UX Expert",
    "Software Developer",
    "React Developer"
  ];
  final List<String> company = ["Facebook", "Apple", "Tesla"];
  final List<String> jobDetails = [
    "Lorem ipum is a nice text I always use it for building apps Lorem ipum is a nice text I always use it for building apps Lorem ipum is a nice text I always use it for building apps",
    "Lorem ipum is a nice text I always use it for building apps Lorem ipum is a nice text I always use it for building apps Lorem ipum is a nice text I always use it for building apps",
    "Lorem ipum is a nice text I always use it for building apps Lorem ipum is a nice text I always use it for building apps Lorem ipum is a nice text I always use it for building apps",
  ];
  final List<String> site = ["On Site", "Remote", "Hybrid"];
  final List<String> positionType = ["Full Time", "Part Time", "Full Time"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 228, 228),
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 35.0, top: 25, bottom: 15),
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
            padding: EdgeInsets.only(top: 8.0, bottom: 15, left: 15, right: 15),
            child: SearchFormWidget(),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0, left: 15, right: 15),
            child: RecommendedText(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: position.length,
              itemBuilder: (context, index){
                return TileWidgets(
                  iconsUse: iconsUse[index],
                  position: position[index],
                  jobDetails: jobDetails[index],
                  site: site[index],
                  positionType: positionType[index],
                  company: company[index],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomBarNav(),
    );
  }
}
