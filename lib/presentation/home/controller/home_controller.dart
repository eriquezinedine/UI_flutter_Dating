import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {
  HomeController();

  ValueNotifier<int> index = ValueNotifier(0);
  final PageController _pageController = PageController();

  void goToPage(int pageIndex) {
    _pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    // changePosition(pageIndex);
  }

  PageController get pageController => _pageController;

  void changePosition(int value) {
    index.value = value;
    notifyListeners();
  }
}
