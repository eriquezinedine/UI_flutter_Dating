import 'dart:math';

import 'package:dating_app/core/icons/dating_icons.dart';
import 'package:dating_app/core/theme/palette.dart';
import 'package:dating_app/presentation/detail/widget/icon_detail.dart';
import 'package:flutter/material.dart';

class RowIcons extends StatelessWidget {
  const RowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconDetail(
            icon: Icons.clear,
            colorIcon: Palette.red,
            backgroundColor: Colors.white,
            tScale: 1.4,
          ),
          Transform.rotate(
            angle: pi / 180 * -20,
            child: IconDetail(
              icon: Dating.pata,
              colorIcon: Colors.white,
              sizeIcon: 32,
              gradient: Palette.gradientPink,
              colorShadow: Palette.pink.withOpacity(.55),
            ),
          ),
          IconDetail(
            icon: Icons.star,
            colorIcon: Palette.yelow,
            backgroundColor: Colors.white,
            tScale: 1.4,
          ),
        ],
      ),
    );
  }
}
