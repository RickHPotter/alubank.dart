import 'package:alubank/theme/theme_colours.dart';
import 'package:alubank/theme/theme_typography.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    //   height: 144,
    //   width: 360,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end:  Alignment.bottomCenter,
          colors: ThemeColours.headerGradient,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
    ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 83, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text.rich(
                    TextSpan(
                        text: '\$',
                        children: <TextSpan> [
                          TextSpan(
                            text: '200.00',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                    ),
                ),
                const Text('Account Balance.',),
              ],
            ),
            const Icon(Icons.account_circle, size: 35,),
          ],
        ),
      ),
    );
  }
}
