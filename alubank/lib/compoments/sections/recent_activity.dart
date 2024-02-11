import 'package:alubank/compoments/box_card.dart';
import 'package:alubank/compoments/color_dot.dart';
import 'package:alubank/compoments/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding:  EdgeInsets.all(16),
        child: BoxCard(boxContent: _RecentActivityContent()));
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child:
                        ColorDot(color: ThemeColors.recentActivity['spent'])),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saida'),
                    Text('\$9900.97',
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child:
                        ColorDot(color: ThemeColors.recentActivity['income'])),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Entrada'),
                    Text('\$9933.35',
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding:  EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text('Limite de gastos: \$432.93'),
        ),
        Container(
          clipBehavior: Clip.hardEdge, 
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: LinearProgressIndicator(
            value: 0.3,
            minHeight: 8.0,
            color:ThemeColors.recentActivity['income'] ,
          ),
        ),
        const Padding(
          padding:  EdgeInsets.only(top:8.0,bottom:8.0),
          child:ContentDivision(),
        ),
        const Text('Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!'),
        TextButton(
          onPressed: (){}, 
          child: 
          Text('Diga-me como',style:TextStyle(fontSize: 16.0,color:ThemeColors.recentActivity['income'])))
      ],
    );
  }
}
