import 'package:flutter/material.dart';

import '../data/bank_inherited.dart';
import '../theme/theme_colours.dart';

class AccountPoints extends StatefulWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  State<AccountPoints> createState() => _AccountPointsState();
}

class _AccountPointsState extends State<AccountPoints> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              'Total Points',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Text(
            BankInherited.of(context).values.points.toInt().toString(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                  border: Border.all(color: ThemeColours.divider)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'recentActivity:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ThemeColours.recentActivity['delivery'],
                    ),
                  ),
                ),
                const Text('Free delivery: 15000pts'),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ThemeColours.recentActivity['streaming'],
                  ),
                ),
              ),
              const Text('1 month streaming: 30000pts'),
            ],
          ),
        ],
      ),
    );
  }
}
