import 'package:alubank/components/colour_dot.dart';
import 'package:alubank/components/content_divider.dart';
import 'package:alubank/theme/theme_colours.dart';
import 'package:alubank/theme/theme_typography.dart';
import 'package:flutter/material.dart';

import 'package:alubank/components/card.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(
          boxContent: _RecentActivityContent(),
      ),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ColourDot(colour: ThemeColours.recentActivity['outcome'],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Outcome'),
                    Text(
                      '\$1600.00',
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                ColourDot(colour: ThemeColours.recentActivity['income'],),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Income'),
                    Text(
                      '\$1800.00',
                      style: Theme.of(context).textTheme.bodyLarge,),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text('Spending Limit: \$387.00'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const LinearProgressIndicator(
            value: 0.10,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivider(),
        ),
        const Text(
            'This month you\'ve spent \$232 with games. Try to reduce this number!',
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Tell me how',
              style: ThemeTypography.gFonts('Raleway', 16, FontWeight.w400),
            ))
      ],
    );
  }
}
