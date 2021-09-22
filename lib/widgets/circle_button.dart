import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.buttonIcon,
    required this.iconSize,
    required this.iconColor,
    required this.onPressed,
  }) : super(key: key);

  final IconData buttonIcon;
  final double iconSize;
  final Color iconColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        onPressed: () => onPressed!(),
        icon: Icon(
          buttonIcon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
