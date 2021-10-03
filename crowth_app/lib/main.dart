import 'app/features/main_board/presentation/pages/main_board_page.dart';
import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: crowthThemesLight,
      home: const MainBoardPage(),
    );
  }
}
