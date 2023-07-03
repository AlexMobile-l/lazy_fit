import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/theme/theme_color.dart';

class ChangeTime extends StatelessWidget {
  const ChangeTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.35,
      height: screenWidth * 0.5,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: ThemeColors.purpleLight),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
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
