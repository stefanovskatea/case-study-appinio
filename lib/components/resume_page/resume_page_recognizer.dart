import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher_string.dart';

resumePageRecognizer(url){
  TapGestureRecognizer()
    .onTap = () async {
      //var url =
     // ("https://babynames.com/name/tea#:~:text=The%20name%20Tea%20is%20primarily,Short%20form%20of%20Dorotea%2FDorothea.");
      if (await canLaunchUrlString(url)) {
        await launchUrlString(url);
      } else {
        throw 'Could not launch $url';
      }
    };
}
