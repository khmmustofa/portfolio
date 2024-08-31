import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/utils/animated_icon_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIocnButton(
          iconData: FontAwesomeIcons.facebook,
          onTap: () {},
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIocnButton(
          iconData: FontAwesomeIcons.instagram,
          onTap: () {},
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIocnButton(
          iconData: FontAwesomeIcons.twitter,
          onTap: () {},
        ),
      ],
    );
  }
}
