import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/utils.dart';

class BaseSvg extends StatelessWidget {
  const BaseSvg({
    super.key,
    required this.icons,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.clipBehavior = Clip.hardEdge,
  });

  final String icons;
  final BoxFit fit;
  final double? height;
  final double? width;
  final Color? color;
  final AlignmentGeometry alignment;
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icons,
      height: height,
      width: width,
      fit: fit,
      alignment: alignment,
      clipBehavior: clipBehavior,
      placeholderBuilder: (context) =>
          SizedBox(
            width: width ?? 24,
            height: height ?? 24,
            child: Material(
                borderRadius: Utils.kBorderRadius12,
                color: Colors.grey.shade300,
            ),
          ),
      colorFilter: color != null
          ? ColorFilter.mode(
        color!,
        BlendMode.srcIn,
      )
          : null,
    );
  }
}
