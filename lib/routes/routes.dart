import 'package:dating_app/presentation/home/home_view.dart';
import 'package:flutter/material.dart';

class Routes {
  Routes._();

  static const home = '/home';

  static Map<String, Widget Function(BuildContext)> list = {
    Routes.home: (BuildContext context) => const HomeView(),
  };
}
