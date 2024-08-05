import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/common_widgets/change_time.dart';

import '../../common_widgets/custom_navigation_bar.dart';
import '../../common_widgets/header.dart';
import '../../theme/gradients.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(gradient: Gradients.mainBGGradient),
        child: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Header(title: 'Schedule', backButtonEnabled: true),
              ChangeTime(),
              CustomNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
