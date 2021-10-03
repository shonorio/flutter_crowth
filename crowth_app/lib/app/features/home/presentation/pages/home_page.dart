import 'package:crowth_app/app/features/home/domain/entity/home_card_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

import '../widget/home_app_bar.dart';
import '../widget/home_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeCardEntity> cards = [
    HomeCardEntity(
      tagColor: const Color(0xff39E379),
      tagTitle: "Remote Workeers",
      companyMarket: "Digital Marketing",
      companyName: "Comp Y - Collaborating for a greeener world",
      companyPlace: "London / Remote",
      companyScheduleAlert: "Only 1 week left!",
      images: [
        Image.asset('assets/images/planning_001.jpg', fit: BoxFit.cover),
        Image.asset('assets/images/planning_002.jpg', fit: BoxFit.cover),
        Image.asset('assets/images/planning_003.jpg', fit: BoxFit.cover),
      ],
    ),
    HomeCardEntity(
      tagColor: const Color(0xffF8DFE5),
      tagTitle: "Career Changers",
      companyMarket: "Information Technology",
      companyName: "Comp Z",
      companyPlace: "Bristol / Remote",
      companyScheduleAlert: "Running out!",
      images: [
        Image.asset('assets/images/planning_004.jpg', fit: BoxFit.cover),
      ],
    ),
    HomeCardEntity(
      tagColor: const Color(0xff39E379),
      tagTitle: "Reinvent dinnertime",
      companyMarket: "Food & Beverages",
      companyName: "Gostoso",
      companyPlace: "Turin",
      companyScheduleAlert: "Running out!",
      images: [
        Image.asset('assets/images/planning_005.jpg', fit: BoxFit.cover),
        Image.asset('assets/images/planning_003.jpg', fit: BoxFit.cover),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SizedBox.expand(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              _buildFastHomeAction(),
              Expanded(
                child: ListView.builder(
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      return HomeCard(dataSource: cards[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFastHomeAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        CircularButton(
          title: 'Find Jobs',
          icon: Icons.luggage_outlined,
          isActived: true,
        ),
        CircularButton(
          title: 'Help Others',
          icon: Icons.favorite,
          isActived: false,
        ),
        CircularButton(
          title: 'Find Candidates',
          icon: Icons.assignment_ind_outlined,
          isActived: false,
        ),
      ],
    );
  }
}
