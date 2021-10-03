import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

class NetsPage extends StatelessWidget {
  const NetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Net of Nets",
          style: crowthThemesLight.textTheme.headline3,
        ),
      ),
    );
  }
}
