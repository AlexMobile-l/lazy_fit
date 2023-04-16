import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/common_widgets/custom_navigation_bar.dart';
import 'package:lazy_fit/presentation/theme/gradients.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: Gradients.mainBGGradient),
      child: SafeArea(
        child: Stack(
          children: [
            CustomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
