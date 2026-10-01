// GENERATED FILE - DO NOT EDIT BY HAND.
// Generated semantic Card atom. Figma card slots are mapped to image/content/topRight.
import 'package:design_system/theme/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:tokens/tokens.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.image,
    this.topRight,
    this.onTap,
    this.contentPadding,
    this.imageHeight,
    this.topRightRight,
    this.topRightTop,
  });

  final Widget child;
  final Widget? image;
  final Widget? topRight;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final double? imageHeight;
  final double? topRightRight;
  final double? topRightTop;

  @override
  Widget build(BuildContext context) {
   final tokens =
    Theme.of(context)
        .extension<DsThemeExtension>()!
        .tokens;
        final radius =
    BorderRadius.circular(
  tokens.cardComponentRadius,
);
    final content = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (image != null)
          SizedBox(
            width: double.infinity,
            height: imageHeight ?? tokens.cardComponentImageHeight,
            child: ClipRRect(
              borderRadius: radius,
              child: image,
            ),
          ),
        Padding(
          padding: contentPadding ??tokens.cardComponentContentPadding,
          child: child,
        ),
      ],
    );

    final card = Container(
      decoration: BoxDecoration(
        color:tokens.cardBackground,
        borderRadius: radius,
        border: Border.all(color: tokens.cardComponentBorder),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          content,
          if (topRight != null)
            Positioned(
              top: topRightTop ?? 12,
              right: topRightRight ?? 12,
              child: topRight!,
            ),
        ],
      ),
    );

    if (onTap == null) return card;
    return Material(
      color: Colors.transparent,
      child: InkWell(onTap: onTap, borderRadius: radius, child: card),
    );
  }
}
