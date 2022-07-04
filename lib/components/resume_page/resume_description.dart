import 'package:challenge/styles/contact_info_resume_page_style.dart';
import 'package:flutter/material.dart';

class ResumeDescriptionCell extends StatelessWidget {
  const ResumeDescriptionCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          color: Colors.black38,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Diligent problem-solver with resourceful approach to "
                      "challenges and organized style. Leverages Computer "
                      "Science expertise to manage job functions.",
                  style: contactInfoStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
