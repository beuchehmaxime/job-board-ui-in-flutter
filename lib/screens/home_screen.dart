import 'package:flutter/material.dart';

import '../widgets/home_button_widget.dart';
import '../widgets/home_text_widget.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 239, 238),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 50, left: 20, right: 20, bottom: 30),
              alignment: Alignment.topCenter,
              child: const Image(
                image: AssetImage("images/home.png"),
                height: 300,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20),
              child: HomeTextWidget(
                  mainText: "Welcome to a world of visual enchantment",
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  colorUse: Color.fromARGB(255, 74, 74, 74)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: HomeTextWidget(
                  mainText:
                      "Lorem Ipsum Dolor is simply a dummy text for printing for printing for printing Lorem Ipsum Dolor is simply a dummy text for printing for printing for printing",
                  fontSize: 17,
                   fontWeight: FontWeight.w400,
                  colorUse: Color.fromARGB(255, 150, 150, 150)),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: HomeButtonWidget(),
            ),
            TextButton(
              //icon: const Icon(Icons.add_shopping_cart),
              //label: Text("Shop now".toUpperCase()),
              onPressed: null,
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromARGB(255, 17, 115, 64),
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
