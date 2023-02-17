import 'package:alubank/theme/theme_colours.dart';
import 'package:flutter/material.dart';

class ContentDivider extends StatelessWidget {
  const ContentDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColours.divider),
      ),
    );
  }
}
