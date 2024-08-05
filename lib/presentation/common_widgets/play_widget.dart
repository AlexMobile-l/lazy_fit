import 'package:flutter/material.dart';
import 'package:lazy_fit/presentation/common_widgets/buttons/play_button.dart';
import 'package:lazy_fit/presentation/theme/theme_text_style.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // var streamController = StreamController<String>();

    return Container(
      height: 125,
      width: double.infinity,
      color: Colors.grey.withOpacity(0.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 80,
              color: Colors.grey.withOpacity(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '15:00',
                    style: ThemeTextStyle.s24w400.copyWith(color: Colors.white),
                  ),
                  Text(
                    'time\nleft',
                    textAlign: TextAlign.center,
                    style: ThemeTextStyle.s16w400
                        .copyWith(color: Colors.white.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
            const PlayButton(),
            Container(
              width: 80,
              color: Colors.grey.withOpacity(0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '320',
                    style: ThemeTextStyle.s24w400.copyWith(color: Colors.white),
                  ),
                  Text(
                    'calories\nburned',
                    textAlign: TextAlign.center,
                    style: ThemeTextStyle.s16w400
                        .copyWith(color: Colors.white.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // child: Text(
      //   'Lazy Fit',
      //   style: ThemeTextStyle.s30w600.copyWith(color: Colors.white),
      // ),
    );
  }
}
