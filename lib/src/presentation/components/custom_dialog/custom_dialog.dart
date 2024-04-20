import 'package:flutter/material.dart';

void showCustomDialog({
  required BuildContext context,
  required Widget child,
  bool barrierDismissible = true,
}) {
  showGeneralDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    barrierLabel: 'custom dialog',
    pageBuilder: (context, animation, _) => ScaleTransition(
      scale: animation,
      child: Center(
        child: FittedBox(
          child: Dialog(
            child: child,
          ),
        ),
      ),
    ),
  );
}