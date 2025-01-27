import 'package:flutter/material.dart';

class CustomCardButton extends StatelessWidget {
  const CustomCardButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: SizedBox(
        height: 25,
        width: 25,
        child: IconButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(Colors.white),
          ),
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 12,
          ),
        ),
      ),
    );
  }
}
