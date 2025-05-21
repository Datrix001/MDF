import 'package:flutter/material.dart';
import 'package:mdf/components/card.dart';
import 'package:mdf/utils/font.dart';

class BattleUi extends StatelessWidget {
  const BattleUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ansil", style: CustomFont.body1(context)),
              Text("Mayank", style: CustomFont.body1(context)),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("10", style: CustomFont.body(context)),
              Text("20", style: CustomFont.body(context)),
            ],
          ),
          SizedBox(height: 20),
          Text("Tasks", style: CustomFont.body1(context)),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Column(
              children: [
                card(),
                SizedBox(height: 20),
                card(),

                SizedBox(height: 20),

                card(),
                SizedBox(height: 20),
                card(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
