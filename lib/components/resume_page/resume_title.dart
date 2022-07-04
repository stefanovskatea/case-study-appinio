import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';


class ResumeTitleCell extends StatelessWidget {
  const ResumeTitleCell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: Colors.black38,
      child: SizedBox(
        height: 160,
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  text: '\nTea Stefanovska',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url =
                          ("https://babynames.com/name/tea#:~:text=The%20name%20Tea%20is%20primarily,Short%20form%20of%20Dorotea%2FDorothea.");
                      if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  style: const TextStyle(
                      fontSize: 39,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '\nComputer Science Student',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url =
                          "https://www.jacobs-university.de/study/undergraduate/programs/computer-science";
                      if (await canLaunchUrlString(url)) {
                        await launchUrlString(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
