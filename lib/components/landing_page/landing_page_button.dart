import 'package:flutter/material.dart';
import '../../decorations/landing_page_button_decoration.dart';
import '../../styles/options_text_style.dart';

class LandingPageButton extends StatelessWidget {
  final Widget route;
  final String title;

  const LandingPageButton({
    Key? key,
    required this.route,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 250,
      decoration: landingPageButtonDeco,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => route,
            ),
          );
        },
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: optionsTextStyle,
          ),
        ),
      ),
    );
  }
}
