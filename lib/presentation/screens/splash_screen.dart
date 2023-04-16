import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/screens/main_screen.dart';
import 'package:lazy_fit/presentation/screens/onboarding_screen.dart';
import 'package:lazy_fit/states/splash_state.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool firstEntry = context.watch<SplashState>().firstEntry;
    return firstEntry ? const OnboardingScreen() : const MainScreen();
  }
}
