import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:ThemeColors.headerGradient,
        ),
        borderRadius : BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Text('\$1000', style:TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),
                Text.rich(
                  TextSpan(
                    text: '\$',
                    style: TextStyle(fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                          text: '1000.00',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Text(
                  'Balanço disponivel',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 42,
            )
          ],
        ),
      ),
    );
  }
}
