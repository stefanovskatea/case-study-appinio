import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeTitleCell extends StatelessWidget {
  const ResumeTitleCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/Img83205.jpg', height: 300, width: 150,),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My name is:',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400))),
                    Text('Tea Stefanovska',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.amber,
                                fontSize: 20,
                                fontWeight: FontWeight.w600))),
                    Text('I am a:',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400))),
                    Text('Computer Science\nStudent',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.amber,
                                fontSize: 20,
                                fontWeight: FontWeight.w600))),
                    Text('At:',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400))),
                    Text('Jacobs University\nBremen',
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.amber,
                                fontSize: 20,
                                fontWeight: FontWeight.w600))),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
