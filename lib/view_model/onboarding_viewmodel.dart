import 'package:flutter/material.dart';
import 'package:therule_oflaw/model/onboarding_model.dart';

class OnboardingViewModel extends ChangeNotifier {
  final List<OnboardingModel> _onboardingItems = [
    OnboardingModel(
      imagePath: 'assets/onboarding_image/image1.png',
      title: 'Welcome',
      description: 'Welcome to our app.',
    ),
    OnboardingModel(
      imagePath: 'assets/onboarding_image/image2.png',
      title: 'Discover',
      description: 'Discover new features.',
    ),
    OnboardingModel(
      imagePath: 'assets/onboarding_image/image3.png',
      title: 'Enjoy',
      description: 'Enjoy using our app.',
    ),
  ];

  int _currentIndex = 0;

  List<OnboardingModel> get onboardingItems => _onboardingItems;

  int get currentIndex => _currentIndex;

  void nextPage() {
    if (_currentIndex < _onboardingItems.length - 1) {
      _currentIndex++;
      notifyListeners();
    }
  }

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  bool get isLastPage => _currentIndex == _onboardingItems.length - 1;
}
