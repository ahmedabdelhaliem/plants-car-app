import 'package:flutter/material.dart';

class CustomBottonDetails extends StatelessWidget {
  const CustomBottonDetails({
    super.key,
    required this.onPressed,
    required this.text,
    required this.isActive,
  });

  final void Function()? onPressed;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 23,
        backgroundColor: isActive ? Colors.white : const Color(0xff5F5855),
        child: Center(
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
