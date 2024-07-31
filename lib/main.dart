import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:therule_oflaw/core/router/app_router.dart';
import 'package:therule_oflaw/provider/providers.dart';
import 'package:therule_oflaw/provider/theme_rpovider.dart';
import 'package:therule_oflaw/view/onboarding/onboarding_page.dart';

void main() {
  runApp(
    multiProvider(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: OnboardingPage(),
      initialRoute: AppRouter.onboardingRoute,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
