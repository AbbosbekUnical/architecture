import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

sealed class Utils {
  Utils._();

  ///spacer
  static const kSpacer = Spacer();

  ///gap
  static const kGap = Gap(0);
  static const kGap4 = Gap(4);
  static const kGap6 = Gap(6);
  static const kGap8 = Gap(8);
  static const kGap12 = Gap(12);
  static const kGap16 = Gap(16);
  static const kGap20 = Gap(20);
  static const kGap24 = Gap(24);
  static const kGap40 = Gap(40);

  ///divider
  static const kDivider = Divider();

  /// padding
  static const kPadding0 = EdgeInsets.zero;
  static const kPaddingAll4 = EdgeInsets.all(4);
  static const kPaddingAll6 = EdgeInsets.all(6);
  static const kPaddingAll8 = EdgeInsets.all(8);
  static const kPaddingAll10 = EdgeInsets.all(10);
  static const kPaddingAll12 = EdgeInsets.all(12);
  static const kPaddingAll16 = EdgeInsets.all(16);
  static const kPaddingAll24 = EdgeInsets.all(24);
  static const kPaddingHorizontal12 = EdgeInsets.symmetric(horizontal: 12);
  static const kPaddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);
  static const kPaddingVertical12 = EdgeInsets.symmetric(vertical: 12);
  static const kPaddingVertical16 = EdgeInsets.symmetric(vertical: 16);

  static const kPaddingHor32Ver20 =
      EdgeInsets.symmetric(horizontal: 32, vertical: 20);
  static const kPaddingBottom16 = EdgeInsets.fromLTRB(0, 0, 0, 16);
  static const kPaddingBottom2 = EdgeInsets.fromLTRB(0, 0, 0, 2);
  static const kPaddingHor14Ver16 =
      EdgeInsets.symmetric(horizontal: 14, vertical: 16);
  static const kPaddingHor16Ver12 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 12);
  static const kPaddingHor16Ver24 =
      EdgeInsets.symmetric(horizontal: 16, vertical: 24);

  static const kPaddingAllB16 = EdgeInsets.fromLTRB(16, 16, 16, 0);
  static const kPaddingAllB12 = EdgeInsets.fromLTRB(12, 12, 12, 0);
  static const kPaddingAllT24 = EdgeInsets.fromLTRB(24, 0, 24, 24);
  static const kPaddingT8 = EdgeInsets.only(top: 8);
  static const kPaddingT4 = EdgeInsets.only(top: 4);

  /// border radius
  static const kRadius = Radius.zero;
  static const kBorderRadius2 = BorderRadius.all(Radius.circular(2));
  static const kBorderRadius4 = BorderRadius.all(Radius.circular(4));
  static const kBorderRadius8 = BorderRadius.all(Radius.circular(8));
  static const kBorderRadius10 = BorderRadius.all(Radius.circular(10));
  static const kBorderRadius12 = BorderRadius.all(Radius.circular(12));
  static const kBorderRadius16 = BorderRadius.all(Radius.circular(16));
  static const kBorderRadius24 = BorderRadius.all(Radius.circular(24));
  static const kShapeRoundedNone = RoundedRectangleBorder();
  static const kShapeRoundedAll12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const kShapeRoundedAll10 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );

  static const kShapeRoundedAll24 = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(24),
    ),
  );
  static const kShapeRoundedBottom12 = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(12),
      bottomLeft: Radius.circular(12),
    ),
  );

  ///duration
  static const kSecund = Duration(seconds: 1);
  static const kSecund2 = Duration(seconds: 2);
  static const kMilliSecund500 = Duration(milliseconds: 500);
}
