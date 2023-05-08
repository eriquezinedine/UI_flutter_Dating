import 'package:dating_app/core/theme/palette.dart';
import 'package:flutter/material.dart';

class ChipRow extends StatelessWidget {
  const ChipRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 13,
          child: Text('z'),
        ),
        const SizedBox(width: 8),
        Chip(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          backgroundColor: Palette.blackLight,
          label: const Text(
            '9 Km',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
