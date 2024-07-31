import 'package:flutter/material.dart';
import 'package:therule_oflaw/core/router/app_router.dart';
import 'package:therule_oflaw/view/home/home_page.dart';

class OnboardingViewModel extends ChangeNotifier {
  PageController _controller = PageController();
  int _currentPage = 0;

  PageController get controller => _controller;

  int get currentPage => _currentPage;

  void onPageChanged(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void jumpToPage(int page) {
    _controller.jumpToPage(page);
  }

  void nextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
  }

  void start(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRouter.splashRoute);
  }
}
