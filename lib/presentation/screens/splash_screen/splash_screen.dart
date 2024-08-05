import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_fit/presentation/screens/main_screen/main_screen.dart';
import 'package:lazy_fit/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:lazy_fit/presentation/screens/splash_screen/splash_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Get.put(SplashState());
    return state.wasFirstEntryInApp()
        ? const MainScreen()
        : const OnboardingScreen();
  }
}
