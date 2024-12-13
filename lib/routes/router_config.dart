import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_fit/presentation/screens/onboarding_screen/onboarding_screen.dart';

import '../presentation/screens/main_screen/main_screen.dart';
import '../presentation/screens/schedule_screen/schedule_screen.dart';
import '../presentation/screens/splash_screen/splash_state.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: mainScreen,
    routes: [
      GoRoute(
        path: mainScreen,
        builder: (context, state) => const MainScreen(),
        routes: [
          GoRoute(
            path: scheduleScreen,
            builder: (context, state) => const ScheduleScreen(),
          ),
        ],
      ),
      GoRoute(
        path: onboardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
    ],
    redirect: (context, state) {
      final controller = Get.put(SplashState());
      if (!controller.wasFirstEntryInApp()) {
        return onboardingScreen;
      }
      return null;
    },
  );

  static String mainScreen = '/';
  static String scheduleScreen = 'schedule';
  static String onboardingScreen = 'onboarding';
}
