import 'package:flutter/material.dart';

import '../components/sections/header.dart';
import '../components/sections/recent_activity.dart';
import '../components/sections/account_actions.dart';
import '../components/sections/account_points.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: const [
              Header(),
              RecentActivity(),
              ActionsSection(),
              PointsExchange(),
            ],
          ),
      ),
    );
  }
}
