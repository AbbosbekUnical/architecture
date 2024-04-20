import 'package:flutter/services.dart';

class NumberSeparateFormatter extends TextInputFormatter {
  static const separator = ' '; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Short-circuit if the new value is empty
    if (newValue.text.contains(RegExp(r'[!-/:-ÿ]'))) {
      return oldValue;
    } else {
      if (newValue.text.isEmpty) {
        return newValue.copyWith(text: '');
      }

      // Handle "deletion" of separator character
      String oldValueText = oldValue.text.replaceAll(separator, '');
      String newValueText = newValue.text.replaceAll(separator, '');

      if (oldValue.text.endsWith(separator) &&
          oldValue.text.length == newValue.text.length + 1) {
        newValueText = newValueText.substring(0, newValueText.length - 1);
      }

      // Only process if the old value and new value are different
      if (oldValueText != newValueText) {
        int selectionIndex =
            newValue.text.length - newValue.selection.extentOffset;
        String newString = formatWithThousandsSeparator(txt: newValueText);
        return TextEditingValue(
          text: newString.toString(),
          selection: TextSelection.collapsed(
            offset: newString.length - selectionIndex,
          ),
        );
      }

      // If the new value and old value are the same, just return as-is
      return newValue;
    }
  }

  String formatWithThousandsSeparator({required String txt}) {
    final regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    return txt.replaceAllMapped(regex, (Match match) => '${match[1]} ');
  }
}
