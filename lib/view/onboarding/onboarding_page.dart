import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:therule_oflaw/view_model/onboarding_viewmodel.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      body: Consumer<OnboardingViewModel>(
        builder: (context, viewModel, child) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: viewModel.onboardingItems.length,
                    onPageChanged: (index) {
                      viewModel.setCurrentIndex(index);
                    },
                    itemBuilder: (context, index) {
                      final item = viewModel.onboardingItems[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item.imagePath,
                            height: 300,
                            width: 300,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 20),
                          Text(
                            item.title,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            item.description,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: viewModel.isLastPage ? MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
                  children: [
                    if (!viewModel.isLastPage)
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/splash');
                        },
                        child: Text('skip', style: Theme.of(context).textTheme.bodyMedium,),
                      ),
                    if (!viewModel.isLastPage)
                      ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () {
                          if (viewModel.currentIndex <
                              viewModel.onboardingItems.length - 1) {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                        child: Text('Next'),
                      ),
                    if (viewModel.isLastPage)
                      SizedBox(
                        width: 300,
                        child: ElevatedButton(
                          style: Theme.of(context).elevatedButtonTheme.style,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/splash');
                          },
                          child: Text('Start'),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
