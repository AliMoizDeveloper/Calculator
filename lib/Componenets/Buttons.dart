import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final Color color;
  String title;
  final Color fontColor;
  final VoidCallback selecthandler;

  MyButtons(
      {this.color = const Color(0xff2d7530),
      required this.title,
      this.fontColor = Colors.white,
      required this.selecthandler});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: InkWell(
          onTap: selecthandler,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30)),
              color: color,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 25, color: fontColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
