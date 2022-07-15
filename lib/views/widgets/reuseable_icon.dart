import 'package:flutter/material.dart';
import 'package:zoom_clone_app/utils/colors.dart';

class ReuseAbleIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  const ReuseAbleIcon({
    Key? key,
    required this.icon,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black.withOpacity(
                    0.7,
                  ),
                ),
              ],
            ),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
