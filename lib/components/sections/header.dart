import 'package:flutter/material.dart';

import '../../theme/theme.dart';

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
          colors: <Color> [
            Color.fromRGBO(103, 100, 234, 1),
            Color.fromRGBO(155, 105, 254, 1),
            Color.fromRGBO(195, 107, 254, 1),
          ]
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
                      style: CustomTheme.gFonts('Raleway', 16, FontWeight.w400),
                        children: <TextSpan> [
                          TextSpan(
                            text: '200.00',
                            style: CustomTheme.gFonts('Raleway', 28, FontWeight.w700),
                          ),
                        ],
                    ),
                ),
                Text(
                    'Account Balance.',
                    style: CustomTheme.gFonts('Raleway', 16, FontWeight.w400),
                ),
              ],
            ),
            const Icon(Icons.account_circle, size: 35,),
          ],
        ),
      ),
    );
  }
}
