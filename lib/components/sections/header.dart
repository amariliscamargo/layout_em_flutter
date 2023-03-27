// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(103, 99, 234, 1.0),
            Color.fromRGBO(155, 105, 254, 1.0),
            Color.fromRGBO(195, 107, 255, 1.0)
          ],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                //Text('\$1000.00', style:TextStyle(fontSize:28, fontWeight:FontWeight.bold)),
                Text.rich(TextSpan(
                    text: '\$',
                    style: TextStyle(fontSize: 16),
                    children: [
                      TextSpan(
                          text: '1000.00',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
                Text('Balanço disponivel', style: TextStyle(fontSize: 16)),
              ]),
              Icon(Icons.account_circle, size: 42),
            ],
          ),
        ));
  }
}
