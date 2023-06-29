import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_directory/screens/register_screen.dart';

import '../widgets/login_with_button_widget.dart';
import 'jobs_screen.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  bool? _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 237),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Welcome Back",
                            style: GoogleFonts.poppins(
                                fontSize: 28, fontWeight: FontWeight.w600),
                          ),
                          const Icon(
                            Icons.waving_hand,
                            color: Color.fromARGB(255, 204, 185, 11),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hello!, you have been missed",
                        style: GoogleFonts.jost(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 19),
                      ),
                      Text(
                        "Enter your details below to login",
                        style: GoogleFonts.jost(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 19),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 17, 115, 64),
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'Enter your email',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: const Color.fromARGB(255, 17, 115, 64),
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                checkColor:
                                    const Color.fromARGB(255, 212, 253, 232),
                                tristate: false,
                                value: _checkbox,
                                onChanged: (val) {
                                  setState(() {
                                    _checkbox = val;
                                  });
                                }),
                            Text(
                              "Remember Me",
                              style: GoogleFonts.roboto(
                                color: Colors.grey.shade500,
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: GoogleFonts.roboto(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TextButton(
                    //icon: const Icon(Icons.add_shopping_cart),
                    //label: Text("Shop now".toUpperCase()),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return JobScreen();
                        }),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      backgroundColor: const Color.fromARGB(255, 17, 115, 64),
                      //fixedSize: const Size(320, 65),
                      textStyle: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 70, 82, 72),
                      // side: const BorderSide(color: Color.fromARGB(221, 131, 117, 117), width: 2),
                      //shape: const StadiumBorder(),
                    ),

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login".toUpperCase(),
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: 50,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or Login With',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          height: 50,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LoginWithButtons(
                        textName: "Facebook",
                        iconUse: Icons.facebook,
                        colorUse: Colors.blue),
                    LoginWithButtons(
                        textName: "Reddit",
                        iconUse: Icons.face,
                        colorUse: Colors.red),
                  ],
                ),
              ],
            ),
            Center(
              child: Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 17, 
                      fontWeight: FontWeight.w500,
                    )
                  ),
                  TextButton(onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const RegisterScreenWidget();
                        }),
                      );
                  }, child: Text("Sign Up",style: GoogleFonts.poppins(
                      fontSize: 17, 
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 17, 115, 64),
                    )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
