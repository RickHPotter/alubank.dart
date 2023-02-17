import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color.fromRGBO(75, 75, 75, 1),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 8,
          ),
        ],
      ),
      child: boxContent,
    );
  }
}
