import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/common_widgets/custom_navigation_bar.dart';
import 'package:lazy_fit/presentation/common_widgets/header.dart';
import 'package:lazy_fit/presentation/theme/gradients.dart';

import '../common_widgets/play_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(gradient: Gradients.mainBGGradient),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Header(),
              SizedBox(),
              PlayWidget(),
              CustomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
