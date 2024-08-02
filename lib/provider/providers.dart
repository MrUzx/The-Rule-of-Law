import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:therule_oflaw/provider/theme_rpovider.dart';
import 'package:therule_oflaw/view_model/home_viewmodel.dart';
import 'package:therule_oflaw/view_model/onboarding_viewmodel.dart';
import 'package:therule_oflaw/view_model/splash_viewmodel.dart';

MultiProvider multiProvider(var child) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OnboardingViewModel()),
      ChangeNotifierProvider(create: (_) => SplashViewmodel()),
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ChangeNotifierProvider(create: (_)=> HomeViewModel()),
    ],
    child: child,
  );
}
