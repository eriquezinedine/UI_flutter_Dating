import 'package:flutter/material.dart';

import '../../../models/slider_horizontal.dart';

class SliderHorizontalDog extends StatelessWidget {
  const SliderHorizontalDog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ...List.generate(
          SliderHorizontal.data.length,
          (index) {
            return _SliderItem(
              img: SliderHorizontal.data[index].img,
              text: SliderHorizontal.data[index].name,
            );
          },
        )
      ]),
    );
  }
}

class _SliderItem extends StatelessWidget {
  const _SliderItem({
    required this.img,
    required this.text,
  });
  final String img, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 74,
          height: 74,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(img),
        ),
        Text(text)
      ],
    );
  }
}
