import 'package:challenge/styles/contact_info_resume_page_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeDescriptionCell extends StatelessWidget {
  const ResumeDescriptionCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            Text('About me', style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.amber, fontSize: 25, fontWeight: FontWeight.w400))),
            Text(
              "\nDiligent problem-solver with resourceful approach to "
              "challenges and organized style. Leverages Computer "
              "Science expertise to manage job functions.",
              style: description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
