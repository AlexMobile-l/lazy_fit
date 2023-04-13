import 'package:flutter/material.dart';

class SmallNextButton extends StatefulWidget {
  const SmallNextButton({super.key});

  @override
  State<SmallNextButton> createState() => _SmallNextButtonState();
}

class _SmallNextButtonState extends State<SmallNextButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83,
      child: Image.asset('assets/buttons/small_next_button.png'),
    );
  }
}
