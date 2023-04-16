import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/theme/gradients.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration:
                  const BoxDecoration(gradient: Gradients.rarialButtonGradient),
              child: Image.asset(
                'assets/icons/calend.png',
                width: 44,
                height: 40,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration:
                  const BoxDecoration(gradient: Gradients.rarialButtonGradient),
              child: Image.asset(
                'assets/icons/share.png',
                width: 44,
                height: 40,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
