import 'package:flutter/material.dart';
class RightBar extends StatelessWidget {
  final double  ?barwidth; // but a question mark in case flutter isnt accepting a null value
  const RightBar({Key ? key,@required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.yellowAccent
          ),
        ),
      ],
    );
  }
}
