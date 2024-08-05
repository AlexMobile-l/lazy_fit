import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lazy_fit/presentation/common_widgets/buttons/button_medium.dart';
import 'package:lazy_fit/presentation/common_widgets/buttons/button_small.dart';
import 'package:lazy_fit/presentation/theme/gradients.dart';
import 'package:lazy_fit/presentation/theme/theme_text_style.dart';
import 'package:lazy_fit/presentation/screens/splash_screen/splash_state.dart';

import '../../../routes/router_config.dart';

enum PositionPage {
  pageFirst,
  moveToSecond,
  pageSecond,
  moveToThird,
  pageThird,
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
        vsync: this, duration: const Duration(milliseconds: 400));

    animationMoveIn = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.6, 1.0, curve: Curves.easeOut)));

    animationMoveOut = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.0, 0.4, curve: Curves.easeOut)));

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
      case PositionPage.pageSecond:
        position = PositionPage.moveToThird;
        await animationController.forward();
        position = PositionPage.pageThird;
        animationController.reset();
        break;
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
    if (position == PositionPage.moveToThird) {
      return -screenWidth * animationMoveOut.value;
    }
    return -screenWidth;
  }

  double positionPageThird(double screenWidth) {
    if (position == PositionPage.moveToThird) {
      return screenWidth * animationMoveIn.value;
    }
    if (position == PositionPage.pageThird) {
      return 0;
    }
    return screenWidth;
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Container(
        decoration: const BoxDecoration(gradient: Gradients.mainBGGradient),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 300),
              decoration:
                  const BoxDecoration(gradient: Gradients.rarialMainGradient),
            ),
            SafeArea(
              child: AnimatedBuilder(
                  animation: animationController,
                  builder: (context, child) {
                    return Stack(children: [
                      Positioned(
                        top: 0,
                        left: positionPageFirst(screenWidth),
                        child: const _Content(
                          image: 'onbg1',
                          title: 'Много сидите?',
                          body:
                              'Ученые нашли упражнение,\nпозволяющее худеть,\nсидя по 10 часов в день.',
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: positionPageSecond(screenWidth),
                        child: const _Content(
                          image: 'onbg2',
                          title: 'Эффективно',
                          body:
                              'Во время испытаний была\nотмечена удвоенная скорость\nметаболизма жиров в\nорганизме',
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: positionPageThird(screenWidth),
                        child: const _Content(
                          image: 'onbg3',
                          title: 'Просто и удобно',
                          body:
                              'Минимум времени -\nмаксимум пользы.\nLazy Fit покажет как делать\nи учтет когда вам удобно\nзаниматься.',
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: const EdgeInsets.only(right: 20, bottom: 30),
                          child: GestureDetector(
                            onTap: position != PositionPage.pageThird
                                ? move
                                : () {
                                    Routes.router.go(Routes.mainScreen);
                                    Get.find<SplashState>().setFirstEntry;
                                  },
                            child: position != PositionPage.pageThird
                                ? const ButtonSmall(
                                    arrowRightVisibility: true,
                                  )
                                : const ButtonMedium('Поехали'),
                          ),
                        ),
                      )
                    ]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final String image;
  final String title;
  final String body;
  const _Content(
      {required this.image, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20),
          Image.asset('assets/images/$image.png'),
          Text(
            title,
            style: ThemeTextStyle.s30w600.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          Text(
            body,
            style: ThemeTextStyle.s18w600.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 120),
        ],
      ),
    );
  }
}
