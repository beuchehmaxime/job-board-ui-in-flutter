import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_directory/screens/login_screen.dart';

import '../widgets/login_with_button_widget.dart';

class RegisterScreenWidget extends StatefulWidget {
  const RegisterScreenWidget({super.key});

  @override
  State<RegisterScreenWidget> createState() => _RegisterScreenWidgetState();
}

class _RegisterScreenWidgetState extends State<RegisterScreenWidget> {
  bool? _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 237, 237),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create An Account",
                        style: GoogleFonts.poppins(
                            fontSize: 28, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Welcome to Job Hunter. Fill in the details below to create an account for free.",
                        style: GoogleFonts.jost(
                            color: Colors.grey.shade500,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
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
                          "Username",
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
                            hintText: 'Enter your username',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(
                      height: 20,
                    ),
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
                          "Agree to Terms and Conditions",
                          style: GoogleFonts.roboto(
                            color: Colors.grey.shade500,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                          return const LoginScreenWidget();
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
                            "Create Account".toUpperCase(),
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0.0),
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
                          'Or Sign Up With',
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
                    "Already have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 16, 
                      fontWeight: FontWeight.w500,
                    )
                  ),
                  TextButton(onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginScreenWidget();
                        }),
                      );
                  }, child: Text("Login",style: GoogleFonts.poppins(
                      fontSize: 16, 
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
