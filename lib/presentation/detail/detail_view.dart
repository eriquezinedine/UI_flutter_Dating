import 'dart:math';

import 'package:dating_app/core/icons/dating_icons.dart';
import 'package:dating_app/core/theme/palette.dart';
import 'package:dating_app/presentation/detail/widget/icon_detail.dart';
import 'package:dating_app/presentation/detail/widget/row_icons.dart';
import 'package:dating_app/presentation/detail/widget/row_info.dart';
import 'package:dating_app/presentation/detail/widget/row_label.dart';
import 'package:dating_app/presentation/home/models/slider_vertical.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({
    super.key,
    required this.detail,
  });

  final SliderVertical detail;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 16),
              _ContainerImg(
                size: size,
                detail: detail,
              ),
              // const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    RowInfo(detail: detail),
                    Text(
                      'Doberman, 5 years',
                      style: TextStyle(
                        color: Palette.grey,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      detail.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Palette.grey,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: size.width,
                      height: 1,
                      color: Palette.greyLight.withOpacity(.6),
                    ),
                    RowLabel(
                      key1: 'Age',
                      keyValue1: '${detail.age} Years',
                      key2: 'Sex',
                      keyValue2: detail.sex,
                    ),
                    const SizedBox(height: 8),
                    RowLabel(
                      key1: 'Find',
                      keyValue1: detail.find,
                      key2: 'Race',
                      keyValue2: detail.race,
                    ),
                    const SizedBox(height: 35),
                    const RowIcons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContainerImg extends StatelessWidget {
  const _ContainerImg({
    Key? key,
    required this.size,
    required this.detail,
  }) : super(key: key);

  final Size size;
  final SliderVertical detail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height * .48,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
          ),
          child: Image.asset(
            detail.img,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconDetail(
                onTap: () {
                  Navigator.pop(context);
                },
                padding: 10,
                colorIcon: Palette.black,
                backgroundColor: Colors.white,
                colorShadow: Palette.shadowBlack,
                icon: Icons.arrow_back_ios_new,
              ),
              IconDetail(
                padding: 10,
                colorIcon: Palette.black,
                backgroundColor: Colors.white,
                icon: Icons.more_horiz,
                colorShadow: Palette.shadowBlack,
                tScale: 1.2,
              )
            ],
          ),
        )
      ],
    );
  }
}
