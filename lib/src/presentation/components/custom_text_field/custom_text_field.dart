import 'dart:io';

import 'package:architecture/src/core/extensions/build_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../config/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.height = 42,
      this.width = double.infinity,
      this.hintText,
      this.errorText,
      this.showError = false,
      this.controller,
      this.keyboardType,
      this.inputAction,
      this.maxLines,
      this.onChanged,
      this.inputFormatters,
      this.obscureText,
      this.suffixIcon,
      this.titleText,
      this.enabled,
      this.onTap,
      this.readOnly = false,
      this.fillColor,
      this.minLines,
      this.onComplete,
      this.validator,
      this.autofocus,
      this.prefixIcon,
      this.prefixText,
      this.prefixStyle,
      this.contentPadding,
      this.haveBorder = true,
      this.style,
      this.filled,
      this.radius = 12,
      this.onSubmitted,
      this.textAlign = TextAlign.start,
      this.focusNode,
      this.isDense = true,
      this.obscuringCharacter = "•"});

  final double height;
  final double width;
  final String? hintText;
  final String? errorText;
  final bool showError;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final int? maxLines;
  final int? minLines;
  final String? titleText;
  final void Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final bool? obscureText;
  final bool readOnly;
  final Color? fillColor;
  final bool? autofocus;
  final bool? enabled;
  final void Function()? onTap;
  final void Function(String value)? onSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function()? onComplete;
  final String? Function(String?)? validator;
  final String? prefixText;
  final TextStyle? prefixStyle;
  final EdgeInsets? contentPadding;
  final bool haveBorder;
  final TextStyle? style;
  final bool? filled;
  final double radius;
  final TextAlign textAlign;
  final FocusNode? focusNode;
  final bool isDense;
  final String obscuringCharacter;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height,
        width: width,
        child: Platform.isIOS || Platform.isMacOS
            ? CupertinoTextField(
                controller: controller,
                focusNode: focusNode,
                readOnly: readOnly,
                enabled: enabled ?? true,
                autofocus: autofocus ?? false,
                obscureText: obscureText ?? false,
                obscuringCharacter: obscuringCharacter,
                onTap: onTap,
                style: style ?? context.textTheme.bodyMedium,
                textInputAction: inputAction ?? TextInputAction.next,
                textAlignVertical: TextAlignVertical.center,
                textAlign: textAlign,
                onChanged: onChanged,
                suffix: suffixIcon,
                cursorColor: Theme.of(context).colorScheme.primary,
                keyboardType: keyboardType,
                maxLines: maxLines ?? 1,
                minLines: minLines ?? 1,
                padding:
                    contentPadding ?? const EdgeInsets.only(left: 8, right: 8),
                inputFormatters: inputFormatters,
                onEditingComplete: onComplete,
                placeholder: hintText,
                placeholderStyle: context.textTheme.bodySmall?.copyWith(
                  color: AppColors.c999999,
                ),
                prefix: prefixIcon == null && prefixText != null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 12,
                              right: 6,
                              top: 2,
                            ),
                            child: Text(
                              prefixText!,
                              style: context.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      )
                    : prefixIcon,
                onSubmitted: (value) {
                  if (value.isNotEmpty && onSubmitted != null) {
                    onSubmitted!(value);
                  }
                },
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: focusNode?.hasFocus ?? false
                        ? context.colorScheme.primary
                        : Colors.grey.shade300,
                  ),
                ),
              )
            : TextFormField(
                focusNode: focusNode,
                validator: validator,
                textCapitalization: TextCapitalization.sentences,
                readOnly: readOnly,
                enabled: enabled ?? true,
                autofocus: autofocus ?? false,
                obscureText: obscureText ?? false,
                obscuringCharacter: obscuringCharacter,
                controller: controller,
                onTap: onTap,
                style: style ?? context.textTheme.bodyMedium,
                textInputAction: inputAction ?? TextInputAction.next,
                textAlignVertical: TextAlignVertical.center,
                textAlign: textAlign,
                onChanged: onChanged,
                decoration: InputDecoration(
                  isDense: isDense,
                  alignLabelWithHint: true,
                  fillColor: fillColor ?? AppColors.cF5F5F5,
                  filled: filled ?? false,
                  suffixIcon: suffixIcon,
                  errorText: showError ? errorText : null,
                  errorStyle: const TextStyle(fontSize: 13),
                  hintText: hintText,
                  hintStyle: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors.c999999,
                  ),
                  contentPadding: contentPadding ??
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                  border: OutlineInputBorder(
                    borderSide: haveBorder
                        ? BorderSide(color: Colors.grey.shade400)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: haveBorder
                        ? BorderSide(color: Colors.grey.shade400)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: haveBorder
                        ? BorderSide(color: context.colorScheme.primary)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: haveBorder
                        ? BorderSide(color: Colors.grey.shade400)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: haveBorder
                        ? const BorderSide(color: Colors.red)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: haveBorder
                        ? const BorderSide(color: Colors.red)
                        : BorderSide.none,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  prefixIcon: prefixIcon == null && prefixText != null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 6),
                              child: Text(
                                prefixText!,
                                style: context.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        )
                      : prefixIcon,
                  prefixStyle: prefixStyle,
                ),
                cursorColor: Theme.of(context).colorScheme.primary,
                keyboardType: keyboardType,
                maxLines: maxLines ?? 1,
                minLines: minLines ?? 1,
                inputFormatters: inputFormatters,
                onEditingComplete: onComplete,
                onFieldSubmitted: (value) {
                  if (value.isNotEmpty && onSubmitted != null) {
                    onSubmitted!(value);
                  }
                },
              ),
      );
}
