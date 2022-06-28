import 'package:flutter/material.dart';
import '../components/navbar/nav_bar.dart';
import '../components/navbar/nav_drawer.dart';
import '../components/resume_page_components/resume_contact_info.dart';
import '../components/resume_page_components/resume_description.dart';
import '../components/resume_page_components/resume_image.dart';
import '../components/resume_page_components/resume_title.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Container(
          child: Column(
              children: [
                NavBar(),
                ResumeTitleCell(),
                Expanded(
                  child: Column(
                    children: [
                      Row(children: [
                        ResumeImageCell(),
                        ContactInfoCell(),
                      ]),
                      ResumedescriptionCell(),
                  ],
          ),
        ),
      ])),
    );
  }
}
