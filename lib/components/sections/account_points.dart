import 'package:flutter/material.dart';

import '../card.dart';
import '../../components/current_points.dart';

class PointsExchange extends StatelessWidget {
  const PointsExchange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Text('Account Points', style: Theme.of(context).textTheme.titleLarge,),
                ),
                const BoxCard(boxContent: AccountPoints()),
              ],
            ),
          );
  }
}
 