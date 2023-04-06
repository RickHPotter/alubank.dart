import 'package:alubank/theme/theme_colours.dart';
import 'package:flutter/material.dart';

import '../../data/bank_inherited.dart';

class Header extends StatefulWidget {
  const Header({Key? key, required this.api}) : super(key: key);
  final Future<String> api;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => setState(() {}),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColours.headerGradient,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 88, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: '£ ',
                          children: <TextSpan>[
                            TextSpan(
                                text: BankInherited.of(context)
                                    .values
                                    .available
                                    .toString(),
                                style: Theme.of(context).textTheme.bodyLarge)
                          ],
                        ),
                      ),
                      const Text('Available Balance'),
                    ],
                  ),
                  FutureBuilder(
                      future: widget.api,
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                          case ConnectionState.active:
                            return const CircularProgressIndicator();
                          case ConnectionState.done:
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: 'R\$ ',
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: snapshot.data.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge)
                                    ],
                                  ),
                                ),
                                const Text('Euro to Real'),
                              ],
                            );
                          default:
                            return const Text('API breakdown.');
                        }
                      }
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
