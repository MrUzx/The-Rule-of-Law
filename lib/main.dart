import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:provider/provider.dart';
import 'package:therule_oflaw/core/router/app_router.dart';
import 'package:therule_oflaw/provider/providers.dart';
import 'package:therule_oflaw/provider/theme_rpovider.dart';

void main() {
  String GeminiKey = 'AIzaSyCAOhXh4AiD2tT0SGYG15oEMKIAdi12n9A';
  Gemini.init(apiKey: GeminiKey);
  runApp(
    multiProvider(MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      initialRoute: AppRouter.homeRoute,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
