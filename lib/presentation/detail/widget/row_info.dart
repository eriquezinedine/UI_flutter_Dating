import 'package:dating_app/core/theme/palette.dart';
import 'package:dating_app/presentation/detail/widget/chip_row.dart';
import 'package:dating_app/presentation/home/models/slider_vertical.dart';
import 'package:flutter/material.dart';

class RowInfo extends StatelessWidget {
  const RowInfo({
    Key? key,
    required this.detail,
  }) : super(key: key);

  final SliderVertical detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          detail.name,
          style: TextStyle(
            fontSize: 24,
            color: Palette.black,
          ),
        ),
        const ChipRow()
      ],
    );
  }
}
