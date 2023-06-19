import 'package:flutter/material.dart';
import 'package:newstore/components/mobile_layout.dart';
import 'package:newstore/components/responsive.dart';
import 'package:newstore/components/web_layout.dart';
import 'package:newstore/screens/home/ListIkan/listikan.dart';

class ListIkanScreen extends StatelessWidget {
  const ListIkanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        webChild: Weblayout(
          dataWidget: FishList(),
        ),
        mobileChild: MobileLayout(
          dataWidget: FishList(),
        ));
  }
}
