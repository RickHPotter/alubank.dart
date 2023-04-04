import 'package:flutter/material.dart';

import '../card.dart';
import '../status.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: BoxCard(
          boxContent: AccountStatus(
        key: Key('testKey'),
      )),
    );
  }
}
