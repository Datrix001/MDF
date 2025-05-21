import 'package:flutter/material.dart';
import 'package:mdf/utils/font.dart';

class card extends StatefulWidget {
  final String title;
  // final String ;
  const card({super.key, required this.title});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Checkbox(
            value: change,
            onChanged: (bool? newValue) {
              setState(() {
                change = newValue!;
              });
            },
          ),
          SizedBox(width: 20,),
          Text(widget.title,style: CustomFont.body(context),)
        ],
      ),
    );
  }
}
