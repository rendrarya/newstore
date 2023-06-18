import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  final Widget dataWidget;

  const MobileLayout({
    super.key,
    required this.dataWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(
            width: 300,
            child: dataWidget,
          )
        ],
      ),
    );
  }
}
