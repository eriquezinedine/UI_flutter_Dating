import 'package:dating_app/core/icons/dating_icons.dart';
import 'package:dating_app/core/theme/palette.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.blueLight,
        borderRadius: BorderRadius.circular(18),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(
            Dating.search,
            color: Palette.black,
            size: 18,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextField(
              style: TextStyle(color: Palette.greyLight),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search for match',
                hintStyle: TextStyle(
                    color: Palette.blueBlack, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Icon(Dating.filtro, color: Palette.pink),
        ],
      ),
    );
  }
}
