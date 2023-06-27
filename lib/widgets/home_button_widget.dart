import 'package:flutter/material.dart';
import 'package:new_directory/screens/jobs_screen.dart';


class HomeButtonWidget extends StatelessWidget {
  const HomeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //icon: const Icon(Icons.add_shopping_cart),
      //label: Text("Shop now".toUpperCase()),
      onPressed: () {
        Navigator.push(context, 
          MaterialPageRoute(builder: (context){
            return const JobScreen();
          }),
        );
      },
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(18.00), 
        backgroundColor:const Color.fromARGB(255, 17, 115, 64),
        fixedSize: const Size(320, 65),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 10,
         shadowColor:const Color.fromARGB(255, 70, 82, 72),
        // side: const BorderSide(color: Color.fromARGB(221, 131, 117, 117), width: 2),
         shape: const StadiumBorder(),
      ),          
      
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Get Started", style: TextStyle(
            color: Colors.white,
          ),),
      ]),
    );
  }
}
