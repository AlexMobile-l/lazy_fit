import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/theme/theme_text_style.dart';

class ButtonMedium extends StatelessWidget {
  final String text;
  const ButtonMedium(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 146,
      height: 59,
      child: Stack(
        children: [
          Image.asset(
            'assets/buttons/button_medium.png',
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: ThemeTextStyle.s22w600.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
