import 'package:flutter/material.dart';
import '../components/resume_page_components/resume_contact_info.dart';
import '../components/resume_page_components/resume_description.dart';
import '../components/resume_page_components/resume_title.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const ResumeTitleCell(),
        Expanded(
          child: Column(
            children: const [
              ContactInfoCell(),
              ResumedescriptionCell(),
            ],
          ),
        ),
      ]),
    );
  }
}
