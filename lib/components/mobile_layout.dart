import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  final Image imageWidet;
  final Widget dataWidget;

  const MobileLayout(
      {super.key, required this.imageWidet, required this.dataWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          imageWidet,
          SizedBox(
            width: 300,
            child: dataWidget,
          )
        ],
      ),
    );
  }
}
