import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TileWidgets extends StatelessWidget {
  final IconData iconsUse;
  final String position;
  final String company;
  final String jobDetails;
  final String site;
  final String positionType;

  const TileWidgets({
    super.key,
    required this.iconsUse,
    required this.position,
    required this.company,
    required this.jobDetails,
    required this.site,
    required this.positionType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0, left: 15, right: 15, top: 10),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Icon(
                        iconsUse,
                        color: Colors.blue,
                        size: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            position,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GoogleFonts.robotoCondensed(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          Text(
                            company, textAlign: TextAlign.start,
                            style: GoogleFonts.roboto(
                                fontSize: 17, color: Colors.grey.shade600
                                ),
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
                      positionType,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
                      site,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
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
                  jobDetails,
                  overflow: TextOverflow.ellipsis,
                            maxLines: 3,
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
