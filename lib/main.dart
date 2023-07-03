import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lazy_fit/presentation/screens/splash_screen.dart';
import 'package:lazy_fit/states/schedule_state.dart';
import 'package:lazy_fit/states/splash_state.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'routes/router_config.dart';

late SharedPreferences sharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get _router => Routes.router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<SplashState>(
              create: (context) => SplashState()),
          ChangeNotifierProvider<ScheduleState>(
              create: (context) => ScheduleState()),
        ],
        child: MaterialApp.router(routerConfig: _router),
      ),
    );
  }
}
