import 'dart:math';

import 'package:dating_app/core/icons/dating_icons.dart';
import 'package:dating_app/core/theme/palette.dart';
import 'package:dating_app/presentation/home/controller/home_controller.dart';
import 'package:dating_app/presentation/home/models/item_model.dart';
import 'package:dating_app/presentation/home/tab/feed_tab/feed_tab.dart';
import 'package:dating_app/presentation/home/tab/home_tab/home_tab.dart';
import 'package:dating_app/presentation/home/tab/match_tab/match_tab.dart';
import 'package:dating_app/presentation/home/widget/item_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = HomeController();
    final listItemNavigation = [
      ItemModel(name: 'Explorar', icon: Dating.dogMenu),
      ItemModel(name: 'Match', icon: Dating.patitaMenu),
      ItemModel(name: 'Feed', icon: Dating.huesoMenu),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Dating.dogSearch),
        title: const _CenterAppBar(),
        actions: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const Icon(Dating.send),
              Positioned(
                right: -5,
                top: 16,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Palette.pinklight,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 14,
          )
        ],
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.changePosition(value);
        },
        children: const [
          HomeTab(),
          MatchTab(),
          FeedTab(),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: controller.index,
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              listItemNavigation.length,
              (index) => GestureDetector(
                onTap: () {
                  controller.goToPage(index);
                },
                child: ItemBottomNavigation(
                  icon: listItemNavigation[index].icon,
                  text: listItemNavigation[index].name,
                  color: value == index ? Palette.pinkDark : Palette.greyLight,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CenterAppBar extends StatelessWidget {
  const _CenterAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Palette.pink,
          size: 15,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Queretaro',
          style: TextStyle(
            color: Palette.blackLight,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Transform.rotate(
          angle: pi / 180 * -90,
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            size: 16,
            color: Palette.pinkDark,
          ),
        )
      ],
    );
  }
}
