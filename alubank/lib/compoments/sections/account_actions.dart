import 'package:alubank/compoments/box_card.dart';
import 'package:flutter/material.dart';

class AccoutActions extends StatelessWidget {
  const AccoutActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Account actions',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: BoxCard(
                  boxContent: _accountActionsContent(
                      icon: Icon(Icons.account_balance_wallet),
                      text: 'Depositar'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: BoxCard(
                  boxContent: _accountActionsContent(
                      icon: Icon(Icons.cached), text: 'Transferir'),
                ),
              ),
              InkWell(
                onTap: () {},
                child: BoxCard(
                  boxContent: _accountActionsContent(
                      icon: Icon(Icons.center_focus_strong), text: 'Ler'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _accountActionsContent extends StatelessWidget {
  final String text;
  final Icon icon;

  const _accountActionsContent(
      {Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text)
        ],
      ),
    );
  }
}
