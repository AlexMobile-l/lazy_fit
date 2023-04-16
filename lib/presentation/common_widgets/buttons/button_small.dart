import 'package:flutter/material.dart';

class ButtonSmall extends StatelessWidget {
  final String text;
  final bool arrowRightVisibility;
  const ButtonSmall(
      {this.text = '', this.arrowRightVisibility = false, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83,
      height: 59,
      child: Stack(
        children: [
          Image.asset(
            'assets/buttons/button_small.png',
          ),
          if (text.isNotEmpty) Text(text),
          if (arrowRightVisibility)
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/icons/arrow_right.png',
                width: 58,
              ),
            ),
        ],
      ),
    );
  }
}
