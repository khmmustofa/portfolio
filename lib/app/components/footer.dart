import 'package:flutter/material.dart';
import 'package:portfolio/app/utils/socialrow.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: const Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 10.0,
          ),
          Text('khoirulmustofa'),
        ],
      ),
    );
  }
}
