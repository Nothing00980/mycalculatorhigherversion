import 'package:flutter/material.dart';
class LeftBar extends StatelessWidget {
  final double ?barwidth; // but a question mark in case flutter isnt accepting a null value
  const LeftBar({Key ? key,@required this.barwidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.yellowAccent,
          ),
        ),
      ],
    );
  }
}
