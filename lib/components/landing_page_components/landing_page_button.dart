import 'package:flutter/material.dart';
import '../../models/decorations.dart';
import '../../services/setup_services.dart';
import '../../services/routing/navigation_service.dart';
import '../../textStyles/options_text_style.dart';

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
      decoration: landing_page_button_deco,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(route);
        },
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: options_text_style,
          ),
        ),
      ),
    );
  }
}
