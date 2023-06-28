import 'package:flutter/material.dart';


class BottomBarNav extends StatelessWidget {
  const BottomBarNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
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
                Text(
                  "Home",
                  style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.format_align_center,
                  color: Color.fromARGB(255, 17, 115, 64),
                ),
                Text(
                  "Listings",
                  style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 17, 115, 64),
                ),
                Text(
                  "Favorites",
                  style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),
                ),
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
                Text(
                  "Settings",
                  style: TextStyle(color: Color.fromARGB(255, 17, 115, 64)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
