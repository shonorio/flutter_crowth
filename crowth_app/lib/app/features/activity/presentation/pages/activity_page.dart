import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          "Activity",
          style: crowthThemesLight.textTheme.headline3,
        ),
      ),
    );
  }
}
