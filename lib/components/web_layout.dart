import 'package:flutter/material.dart';

class Weblayout extends StatelessWidget {
  final Widget dataWidget;

  const Weblayout({super.key, required this.dataWidget});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
            SizedBox(
              width: 400,
              child: dataWidget,
            )
          ],
        ),
      ],
    );
  }
}
