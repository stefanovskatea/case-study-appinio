import 'package:flutter/material.dart';
import '../../decorations/landing_page_button_decoration.dart';
import '../../services/setup_services.dart';
import '../../services/routing/navigation_service.dart';
import '../../styles/options_text_style.dart';

class LandingPageButton extends StatelessWidget {
  final String route;
  final String title;

  const LandingPageButton({
    Key? key,
    required this.route,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 250,
      decoration: landingPageButtonDeco,
      child: GestureDetector(
        onTap: () {
          service<NavigationService>().navigateTo(route);
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
