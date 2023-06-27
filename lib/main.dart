import 'package:flutter/material.dart';
import 'package:new_directory/screens/home_screen.dart';

void main() => runApp(const AppWidget());


class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Job Hunter",
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 17, 115, 64)),
      ),  
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
    );
  }
}