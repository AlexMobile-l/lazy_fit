import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lazy_fit/presentation/theme/theme_text_style.dart';

class Header extends StatelessWidget {
  final String title;
  final bool backButtonEnabled;
  const Header({
    required this.title,
    required this.backButtonEnabled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => context.pop(),
              child: SizedBox(
                width: 24,
                height: 24,
                child: backButtonEnabled
                    ? Image.asset('assets/icons/arrow_left.png')
                    : const SizedBox.shrink(),
              ),
            ),
            Text(
              title,
              style: ThemeTextStyle.s30w600.copyWith(color: Colors.white),
            ),
            const SizedBox(
              width: 24,
            ),
          ],
        ),
      ),
    );
  }
}
