import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showCustomToast({
  required BuildContext context,
  required String title,
  String desc = '',
  ToastificationType type = ToastificationType.error,
}) {
  toastification.show(
    context: context,
    type: type,
    style: ToastificationStyle.fillColored,
    autoCloseDuration: const Duration(seconds: 3),
    title: Text(title),
    // you can also use RichText widget for title and description parameters
    description: desc.isNotEmpty
        ? RichText(
            text: TextSpan(text: desc),
          )
        : null,
    alignment: Alignment.topCenter,
    direction: TextDirection.ltr,
    animationDuration: const Duration(milliseconds: 300),
    animationBuilder: (context, animation, alignment, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    icon: Icon(
      type == ToastificationType.success
          ? Icons.check
          : type == ToastificationType.warning
              ? Icons.warning
              : Icons.info,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Color(0x07000000),
        blurRadius: 16,
        offset: Offset(0, 16),
        spreadRadius: 0,
      )
    ],
    showProgressBar: true,
    closeButtonShowType: CloseButtonShowType.onHover,
    closeOnClick: false,
    pauseOnHover: true,
    dragToClose: true,
    callbacks: ToastificationCallbacks(
      onCloseButtonTap: (toastItem) => toastification.dismiss(toastItem),
    ),
  );
}
