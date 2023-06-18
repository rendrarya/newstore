import 'package:flutter/material.dart';

class Weblayout extends StatelessWidget {
  final Image imageWidget;
  final Widget dataWidget;

  const Weblayout(
      {super.key, required this.imageWidget, required this.dataWidget});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [imageWidget],
              ),
            ),
            SizedBox(
              width: 400,
              child: dataWidget,
            )
          ],
        )
      ],
    );
  }
}
