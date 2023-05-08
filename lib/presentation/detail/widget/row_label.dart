import 'package:dating_app/core/theme/palette.dart';
import 'package:flutter/material.dart';

class RowLabel extends StatelessWidget {
  const RowLabel({
    super.key,
    required this.key1,
    required this.key2,
    required this.keyValue2,
    required this.keyValue1,
  });

  final String key1;
  final String keyValue1;
  final String key2;
  final String keyValue2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Palette.blackLight, fontSize: 12),
              children: <TextSpan>[
                TextSpan(
                    text: '$key1:',
                    style: TextStyle(
                      color: Palette.pinkDark,
                    )),
                const TextSpan(text: ' '),
                TextSpan(text: keyValue1),
              ],
            ),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Palette.blackLight, fontSize: 12),
              children: <TextSpan>[
                TextSpan(
                    text: '$key2:',
                    style: TextStyle(
                      color: Palette.pinkDark,
                    )),
                const TextSpan(text: ' '),
                TextSpan(text: keyValue2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
