import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/resume_page/resume_contact_info.dart';
import '../components/resume_page/resume_description.dart';
import '../components/resume_page/resume_title.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.amber),
        backgroundColor: Colors.white,
        title: Text('Resume',
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.w600))),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40, bottom:20),
            child: Text(
              'Welcome to my Resume!',
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 55,
                      fontWeight: FontWeight.w400)),
            ),
          ),
          Image.asset(
            'assets/resume_illustration.jpg',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 70.0),
            child: Icon(Icons.arrow_downward),
          ),
          const SizedBox(height: 50),
          const ResumeTitleCell(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            child: Icon(Icons.bubble_chart_outlined),
          ),
          const ResumeDescriptionCell(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            child: Icon(Icons.bubble_chart),
          ),
          const ContactInfoCell(),
        ],
      ),
    );
  }
}
