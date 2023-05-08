import 'dart:math';

import 'package:dating_app/core/icons/dating_icons.dart';
import 'package:dating_app/core/theme/palette.dart';
import 'package:dating_app/presentation/detail/detail_view.dart';
import 'package:dating_app/presentation/detail/widget/chip_row.dart';
import 'package:dating_app/presentation/detail/widget/icon_detail.dart';
import 'package:dating_app/presentation/home/models/slider_vertical.dart';
import 'package:flutter/material.dart';

class CardDog extends StatefulWidget {
  const CardDog({super.key, required this.info});

  final SliderVertical info;
  @override
  State<CardDog> createState() => _CardDogState();
}

class _CardDogState extends State<CardDog> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double widthSubCard = width * .8;
    double height = 411;
    double heightSubCard = height * .85;

    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(
              detail: widget.info,
            ),
          ),
        );
      },
      child: Transform.scale(
        scale: 0.9,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              // right: isActive ? -25 : 0,
              left: isActive ? -28 : 0,
              top: isActive ? 35 : 0,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                transform: Matrix4.identity()
                  ..rotateZ(isActive ? pi / 180 * -7 : 0),
                width: widthSubCard,
                height: heightSubCard,
                decoration: BoxDecoration(
                  color: Palette.cardC1,
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              // right: isActive ? -28 : 0,
              // bottom: 0,
              right: isActive ? -28 : 0,

              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                transform: Matrix4.identity()
                  ..rotateZ(isActive ? pi / 180 * 6.5 : 0),
                width: widthSubCard,
                height: heightSubCard,
                decoration: BoxDecoration(
                  color: Palette.cardC2,
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: width,
              height: height,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
              ),
              child: Image.asset(
                widget.info.img,
                fit: BoxFit.cover,
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Palette.blackLight.withOpacity(isActive ? 0.5 : 0),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: isActive ? 1 : 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Palette.blue,
                              ),
                              const SizedBox(width: 6),
                              const CircleAvatar(
                                  radius: 3, backgroundColor: Colors.white),
                              const SizedBox(width: 6),
                              const CircleAvatar(
                                  radius: 3, backgroundColor: Colors.white),
                            ],
                          ),
                          const ChipRow(),
                        ],
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.info.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${widget.info.race}, ${widget.info.age} years',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: isActive ? 1 : 0,
                            child: Column(
                              children: [
                                Transform.rotate(
                                  angle: pi / 180 * -20,
                                  child: IconDetail(
                                    icon: Dating.pata,
                                    colorIcon: Colors.white,
                                    sizeIcon: 32,
                                    gradient: Palette.gradientPink,
                                    colorShadow: Palette.pink.withOpacity(.8),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                IconDetail(
                                  backgroundColor: Palette.yelow,
                                  icon: Icons.star,
                                  colorIcon: Colors.white,
                                  sizeIcon: 32,
                                  colorShadow: Palette.yelow.withOpacity(.55),
                                ),
                                const SizedBox(height: 16),
                              ],
                            ),
                          ),
                        ])
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
