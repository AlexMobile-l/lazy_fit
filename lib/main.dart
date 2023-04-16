import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/screens/splash_screen.dart';
import 'package:lazy_fit/states/splash_state.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<SplashState>(
              create: (context) => SplashState()),
        ],
        child: const SplashScreen(),
      ),
    );
  }
}
