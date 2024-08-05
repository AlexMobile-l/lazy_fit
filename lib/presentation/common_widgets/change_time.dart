import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/theme/gradients.dart';
import 'package:lazy_fit/presentation/theme/theme_color.dart';
import 'package:lazy_fit/presentation/theme/theme_text_style.dart';
import 'package:lazy_fit/presentation/screens/schedule_screen/schedule_state.dart';

class ChangeTime extends StatelessWidget {
  const ChangeTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ChengeHours(),
          Dots(),
          ChengeHours(),
        ],
      ),
    );
  }
}

class ChengeHours extends StatefulWidget {
  const ChengeHours({super.key});

  @override
  State<ChengeHours> createState() => _ChengeHoursState();
}

class _ChengeHoursState extends State<ChengeHours> {
  late PageController pageController;
  final scale = 100;
  final _hours = ScheduleState.hours;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
        initialPage: _hours.length * scale, viewportFraction: 0.33);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.35,
      height: screenWidth * 0.5,
      child: Stack(
        children: [
          PageView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            controller: pageController,
            onPageChanged: (value) => debugPrint(value.toString()),
            itemBuilder: (context, infiniteIndex) {
              debugPrint('infiniteIndex $infiniteIndex');
              final index = infiniteIndex % _hours.length;
              debugPrint('index $index');
              return _Hour(index);
            },
            // itemCount: _hours.length * scale,
          ),
          IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: ThemeColors.purpleLight),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                gradient: Gradients.timeSelectGradient,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Hour extends StatelessWidget {
  final int index;
  const _Hour(this.index);

  @override
  Widget build(BuildContext context) {
    final item = ScheduleState.hours[index];

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.0),
      ),
      child: Center(
        child: Text(
          item.toString(),
          textAlign: TextAlign.center,
          style: ThemeTextStyle.s60w600.copyWith(
            color: Colors.white,
            height: 1.05,
          ),
        ),
      ),
    );
  }
}

class ChengeMinutes extends StatelessWidget {
  const ChengeMinutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Dots extends StatelessWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
