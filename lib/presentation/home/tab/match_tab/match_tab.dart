import 'package:flutter/material.dart';

class MatchTab extends StatelessWidget {
  const MatchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Match view'),
        ),
      ),
    );
  }
}
