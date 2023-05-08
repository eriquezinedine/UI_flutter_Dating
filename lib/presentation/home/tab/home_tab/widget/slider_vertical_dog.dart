import 'package:dating_app/presentation/detail/detail_view.dart';
import 'package:dating_app/presentation/home/models/slider_vertical.dart';
import 'package:dating_app/presentation/home/widget/card_dog.dart';
import 'package:flutter/material.dart';

class SliderVerticalDog extends StatelessWidget {
  const SliderVerticalDog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        SliderVertical.data.length,
        (index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailView(
                    detail: SliderVertical.data[index],
                  ),
                ),
              );
            },
            child: Hero(
              tag: SliderVertical.data[index].name,
              child: CardDog(
                info: SliderVertical.data[index],
              ),
            )),
      ),
    );
  }
}
