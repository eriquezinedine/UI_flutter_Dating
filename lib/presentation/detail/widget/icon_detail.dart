import 'package:dating_app/core/theme/palette.dart';
import 'package:flutter/material.dart';

class IconDetail extends StatelessWidget {
  const IconDetail({
    super.key,
    this.gradient,
    this.colorShadow,
    this.sizeIcon = 15,
    this.padding = 15,
    this.tScale = 1,
    this.onTap,
    this.backgroundColor,
    required this.colorIcon,
    required this.icon,
  });

  final Gradient? gradient;
  final Color? colorShadow;
  final IconData icon;
  final Color colorIcon;
  final double sizeIcon;
  final double padding;
  final double tScale;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          gradient: gradient,
          boxShadow: [
            BoxShadow(
                color: colorShadow ?? Palette.shadowBlack,
                blurRadius: 60,
                offset: const Offset(0, 3) // changes position of shadow
                ),
          ],
        ),
        child: Transform.scale(
          scale: tScale,
          child: Icon(
            icon,
            color: colorIcon,
            size: sizeIcon,
          ),
        ),
      ),
    );
  }
}
