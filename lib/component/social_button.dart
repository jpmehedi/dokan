
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String? icon;
  final VoidCallback? onPressed;
  const SocialButton({
    Key? key, this.icon, this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(56, 56),
        primary: Colors.white, // background
        onPrimary: Colors.white, // foreground
      ),
      onPressed: onPressed,
      child: Image.asset(icon!)
    );
  }
}