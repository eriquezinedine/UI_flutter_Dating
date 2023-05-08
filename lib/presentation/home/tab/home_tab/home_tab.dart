import 'package:dating_app/presentation/home/models/slider_horizontal.dart';
import 'package:dating_app/presentation/home/tab/home_tab/widget/slider_horizontal_dog.dart';
import 'package:dating_app/presentation/home/tab/home_tab/widget/slider_vertical_dog.dart';
import 'package:dating_app/presentation/home/widget/custom_search.dart';
import 'package:flutter/cupertino.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: ListView(
        children: const [
          CustomSearch(),
          SizedBox(height: 16),
          SliderHorizontalDog(),
          SizedBox(height: 16),
          SliderVerticalDog()
        ],
      ),
    );
  }
}
