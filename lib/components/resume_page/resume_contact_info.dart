import 'package:challenge/styles/contact_info_resume_page_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactInfoCell extends StatelessWidget {
  const ContactInfoCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Contact\n',
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        color: Colors.amber,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Text(
              'Address: College Ring 6/B-316, Bremen, 28759, Germany',
              style: contactInfoStyle,
            ),
            Text(
              'Phone: +4917626001562',
              style: contactInfoStyle,
            ),
            Text(
              'Email: tstefanovs@jacobs-university.de',
              style: contactInfoStyle,
            ),
            Text(
              'Linkedin: https://www.linkedin.com/in/tea-stefanovska',
              style: contactInfoStyle,
            ),
            Text(
              'Github: https://github.com/tejchu',
              style: contactInfoStyle,
            ),
          ],
        ),
      ),
    );
  }
}
