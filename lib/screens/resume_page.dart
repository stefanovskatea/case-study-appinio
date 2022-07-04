import 'package:flutter/material.dart';
import '../components/resume_page/resume_contact_info.dart';
import '../components/resume_page/resume_description.dart';
import '../components/resume_page/resume_title.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
      ),
      body: Column(
        children: const [
          ResumeTitleCell(),
          ContactInfoCell(),
          ResumeDescriptionCell(),
        ],
      ),
    );
  }
}
