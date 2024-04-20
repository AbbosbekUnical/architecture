import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.height,
    this.width,
    this.color,
    this.shape,
    this.minimumSize,
    this.maximumSize,
  });
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  final OutlinedBorder? shape;
  final Size? minimumSize;
  final Size? maximumSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: color,
          shape: shape,
          minimumSize: minimumSize,
          maximumSize: maximumSize,
        ),
        onPressed: onPressed,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}