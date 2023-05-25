import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../presentation/screens/schedule_screen.dart';
import '../presentation/screens/splash_screen.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: '/init', // '/settings',
    routes: [
      GoRoute(
        path: '/init',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/schedule',
        builder: (context, state) => const ScheduleScreen(),
      ),
    ],
    // redirect: (context, state) {
    //   if (state.location != '/auth' &&
    //       state.location != '/init' &&
    //       state.location != '/forgotpassword' &&
    //       // // TODO remove
    //       // state.location != '/changepassword' &&
    //       !context.read<AuthState>().logged) {
    //     return '/auth';
    //   }

    //   return state.path;
    // },
  );
}
