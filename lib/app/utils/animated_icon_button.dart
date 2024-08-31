import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIocnButton extends StatefulWidget {
  IconData iconData;
  VoidCallback onTap;

  AnimatedIocnButton({super.key, required this.iconData, required this.onTap});

  @override
  State<AnimatedIocnButton> createState() => _AnimatedIocnButtonState();
}

class _AnimatedIocnButtonState extends State<AnimatedIocnButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHovering = value;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        decoration: BoxDecoration(
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: isHovering ? Colors.green : Colors.white),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: FaIcon(
              widget.iconData,
              size: 28.0,
            ),
          )
        ]),
      ),
    );
  }
}
