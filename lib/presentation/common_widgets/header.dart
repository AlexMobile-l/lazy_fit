import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/theme/theme_text_style.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      child: Text(
        'Lazy Fit',
        style: ThemeTextStyle.s30w600.copyWith(color: Colors.white),
      ),
    );
  }
}
