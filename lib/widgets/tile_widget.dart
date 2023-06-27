import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileWidgets extends StatelessWidget {
  const TileWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0, left: 15, right: 15),
      child: Container(        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Column(
                        children: [
                          Text(
                            "UI/UX Designer",
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Text(
                            "Meta Cooperation",
                            style: GoogleFonts.roboto(
                                fontSize: 17, color: Colors.grey.shade600),
                          )
                        ],
                      )
                    ]),
                    const Icon(
                      Icons.label,
                      color: Color.fromARGB(255, 17, 115, 64),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Center(
                        child: Text(
                      "Full Time",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Center(
                        child: Text(
                      "Remote",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Center(
                        child: Text(
                      "1 Year Exp",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Lorem ipsum is a dummy text used in writing website that are nice. You can easily get it from the ...",
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                    color: Colors.grey.shade600,
                    height: 1.4,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.only(top: 10, bottom: 10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View More",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Icon(Icons.arrow_right_alt)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
