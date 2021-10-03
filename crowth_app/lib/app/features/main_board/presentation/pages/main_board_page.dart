import 'package:flutter/material.dart';

import '../../../activity/presentation/pages/activity_page.dart';
import '../../../nets/presentation/pages/nets_page.dart';
import '../../../post_job/presentation/pages/post_job_page.dart';
import '../../../explorer/presentation/pages/explorer_page.dart';
import '../../../home/presentation/pages/home_page.dart';

class MainBoardPage extends StatefulWidget {
  const MainBoardPage({Key? key}) : super(key: key);

  @override
  _MainBoardPageState createState() => _MainBoardPageState();
}

class _MainBoardPageState extends State<MainBoardPage> {
  int _seletedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyBuilder(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _seletedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,
        onTap: (int index) {
          setState(() {
            _seletedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Home",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            icon: Icon(Icons.search),
            label: "Explorer",
          ),
          BottomNavigationBarItem(
            // backgroundColor: Colors.blue,
            icon: Icon(Icons.group_outlined),
            label: "Net of Nets",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: "Ativicty",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: "Post a Job",
          ),
        ],
      ),
    );
  }

  Widget _bodyBuilder() {
    if (_seletedIndex == 0) {
      return const HomePage();
    } else if (_seletedIndex == 1) {
      return const ExplorerPage();
    } else if (_seletedIndex == 2) {
      return const NetsPage();
    } else if (_seletedIndex == 3) {
      return const ActivityPage();
    } else {
      return const PostPage();
    }
  }
}
