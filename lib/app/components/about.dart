import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app/utils/animated_contact.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: MediaQuery.of(context).size.width < 900
          ? MediaQuery.of(context).size.width * 0.9
          : MediaQuery.of(context).size.width < 1600
              ? MediaQuery.of(context).size.width * 0.3
              : MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 800.0,
      child: Column(
        children: [
          Image.asset(
            'assets/dev.png',
            height: 156.0,
          ),
          const Text(
            'Khoirul Mustofa',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Saya adalah seorang pengembang dan sedang mencari posisi pengembangan di seluruh Indonesia.",
              textAlign: TextAlign.center,
            ),
          ),
          const Wrap(
            alignment: WrapAlignment.center,
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(
                label: Text(
                  "Mobile Developer",
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
              Chip(
                label: Text(
                  "App Developer",
                ),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                backgroundColor: Colors.green,
                padding: EdgeInsets.all(8.0),
              ),
            ],
          ),
          //
          const Divider(),
          //

          AnimatedContact(
            iconData: FontAwesomeIcons.github,
            title: "Github",
            subtitle: "desi-programmer",
            onTap: () {},
          ),
          AnimatedContact(
            iconData: FontAwesomeIcons.gitlab,
            title: "Gitlab",
            subtitle: "@desiprogrammer",
            onTap: () {},
          ),
          AnimatedContact(
            iconData: FontAwesomeIcons.linkedin,
            title: "Linkedin",
            subtitle: "desiprogrammer",
            onTap: () {},
          ),
        ],
      ),

      //
    );
  }
}
