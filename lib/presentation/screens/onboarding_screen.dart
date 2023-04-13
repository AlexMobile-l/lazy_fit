import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/common_widgets/buttons/small_next_button.dart';
import 'package:lazy_fit/presentation/theme/gradients.dart';
import 'package:lazy_fit/presentation/theme/theme_text_style.dart';

enum PositionPage {
  pageFirst,
  moveToSecond,
  pageSecond,
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animationMoveIn;
  late Animation<double> animationMoveOut;

  late dynamic position;

  @override
  void initState() {
    position = PositionPage.pageFirst;
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    animationMoveIn = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.45, curve: Curves.easeOut)));

    animationMoveOut = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.55, 1.0, curve: Curves.easeOut)));

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void move() async {
    switch (position) {
      case PositionPage.pageFirst:
        position = PositionPage.moveToSecond;
        await animationController.forward();
        position = PositionPage.pageSecond;
        animationController.reset();
        break;

      // case PositionPage.pageSecond:
      //       position = PositionPage.moveCity;
      //       await animationController.forward();
      //       position = PositionPage.city;
      //       animationController.reset();
      //   break;
    }
    setState(() {});
  }

  double positionPageFirst(double screenWidth) {
    if (position == PositionPage.pageFirst) {
      return 0;
    }
    if (position == PositionPage.moveToSecond) {
      return -screenWidth * animationMoveOut.value;
    }
    if (position == PositionPage.pageSecond) {
      return -screenWidth * animationMoveIn.value;
    }
    return -screenWidth;
  }

  double positionPageSecond(double screenWidth) {
    if (position == PositionPage.pageFirst) {
      return screenWidth;
    }
    if (position == PositionPage.moveToSecond) {
      return screenWidth * animationMoveIn.value;
    }
    if (position == PositionPage.pageSecond) {
      return 0;
    }
    return -screenWidth;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = (MediaQuery.of(context).size.height);
    return Material(
      child: Container(
        decoration: const BoxDecoration(gradient: Gradients.mainBGGradient),
        child: SafeArea(
          child: AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Stack(children: [
                  Positioned(
                    top: 0,
                    left: positionPageFirst(screenWidth),
                    child: const _Content(
                      title: 'Находка для тех, кто много сидит',
                      body:
                          'Ученые нашли упражнение, позволяющее худеть, сидя по 10 часов в день.\nВо время испытаний была отмечена удвоенная скорость метаболизма жиров в организме',
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: positionPageSecond(screenWidth),
                    child: const _Content(
                      title: 'Находка для тех, кто много сидит',
                      body:
                          'Ученые нашли упражнение, позволяющее худеть, сидя по 10 часов в день. Во время испытаний была отмечена удвоенная скорость метаболизма жиров в организме',
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        margin: const EdgeInsets.only(right: 20, bottom: 30),
                        child: GestureDetector(
                            onTap: move, child: const SmallNextButton())),
                  )
                ]);
              }),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final String title;
  final String body;
  const _Content({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = (MediaQuery.of(context).size.height);
    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              title,
              style: ThemeTextStyle.s14w600.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Text(
            body,
            style: ThemeTextStyle.s14w600.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
