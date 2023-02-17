import 'package:alubank/components/card.dart';
import 'package:alubank/components/colour_dot.dart';
import 'package:alubank/components/content_divider.dart';
import 'package:alubank/theme/theme_colours.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Account Points.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _AccountPointsContent()),
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Total Points:'),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const ContentDivider(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            'Goals:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          children: [
            ColourDot(colour: ThemeColours.accountPoints['free_shipping']),
            const Text('One Free Shipping: 1250'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              ColourDot(colour: ThemeColours.accountPoints['free_streaming']),
              const Text('Free Streaming for a month: 2650'),
            ],
          ),
        )
      ],
    );
  }
}
