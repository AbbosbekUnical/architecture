import 'dart:io';

import 'package:architecture/src/core/extensions/build_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/utils.dart';

showCustomAlertDialog({
  required BuildContext context,
  required String title,
  required VoidCallback onNegative,
  required VoidCallback onPositive,
}) {
  Platform.isIOS
      ? showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: Text(title),
            insetAnimationCurve: Curves.bounceIn,
            insetAnimationDuration: const Duration(milliseconds: 300),
            actions: [
              CupertinoDialogAction(
                onPressed: onNegative,
                textStyle: context.textTheme.titleMedium?.copyWith(
                  color: Colors.lightBlue,
                ),
                child: Text(
                  'no'.tr(),
                ),
              ),
              CupertinoDialogAction(
                textStyle: context.textTheme.titleMedium?.copyWith(
                  color: Colors.red,
                ),
                onPressed: onPositive,
                child: Text(
                  'yes'.tr(),
                ),
              ),
            ],
          ),
        )
      : showGeneralDialog(
          barrierDismissible: true,
          barrierLabel: "custom alert dialog",
          context: context,
          pageBuilder: (context, animation, _) => ScaleTransition(
            scale: animation,
            child: Center(
              child: FittedBox(
                child: Dialog(
                  child: SizedBox(
                    height: 160,
                    width: context.width * 0.2,
                    child: Material(
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: Utils.kPaddingAll12,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Spacer(),
                            Text(
                              title,
                              style: Theme.of(context).textTheme.titleMedium,
                              textAlign: TextAlign.center,
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: ElevatedButton(
                                    onPressed: onNegative,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          context.theme.scaffoldBackgroundColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: Text(
                                      'No',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  child: FilledButton(
                                    onPressed: onPositive,
                                    style: FilledButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: const Text(
                                      'Yes',
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
}
