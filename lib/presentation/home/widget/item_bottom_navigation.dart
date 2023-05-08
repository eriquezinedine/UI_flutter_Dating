import 'package:flutter/material.dart';

class ItemBottomNavigation extends StatelessWidget {
  const ItemBottomNavigation({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 18,
            color: color,
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
