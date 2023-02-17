import 'package:alubank/components/card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Account Actions.',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {debugPrint('Hi there, motherfucker 1.');},
                  child: const BoxCard(boxContent: _AccountActionsContent(
                    title: 'Deposit', icon: Icons.wallet,)
                  ),
                ),
                InkWell(
                  onTap: () {debugPrint('Hi there, motherfucker 2.');},
                  child: const BoxCard(boxContent: _AccountActionsContent(
                    title: 'Transfer', icon: Icons.refresh_sharp,)
                  ),
                ),
                InkWell(
                  onTap: () {debugPrint('Hi there, motherfucker 3.');},
                  child:  const BoxCard(boxContent: _AccountActionsContent(
                    title: 'QR Code', icon: Icons.qr_code,)
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  const _AccountActionsContent({Key? key, required this.title, required this.icon}) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Icon(icon),
          ),
          Text(title),
        ],
      ),
    );
  }
}
