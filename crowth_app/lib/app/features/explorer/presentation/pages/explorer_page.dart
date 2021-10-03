import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

import '../widget/photos_explorer_widget.dart';
import '../widget/explorer_interested_section.dart';
import '../widget/explorer_search_widget.dart';
import '../../../home/presentation/widget/home_app_bar.dart';
import '../../domain/entity/explorer_interested_entity.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        title: "  Explorer",
      ),
      body: SizedBox.expand(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ExplorerSearchWidget(),
                _buildFastHomeAction(),
                _buildPhotosExplorer(),
                _buildInteredList(),
              ],
            ),
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
          isActived: false,
        ),
        CircularButton(
          title: 'Help Others',
          icon: Icons.favorite,
          isActived: true,
        ),
        CircularButton(
          title: 'Find Candidates',
          icon: Icons.assignment_ind_outlined,
          isActived: false,
        ),
      ],
    );
  }

  Widget _buildPhotosExplorer() {
    final List<Image> photos = [
      Image.asset("assets/images/explorer_006.jpg", fit: BoxFit.cover),
      Image.asset("assets/images/explorer_005.jpg", fit: BoxFit.cover),
      Image.asset("assets/images/explorer_004.jpg", fit: BoxFit.cover),
      Image.asset("assets/images/explorer_003.jpg", fit: BoxFit.cover),
    ];

    return PhotosExplorerWidget(
      photos: photos,
      actionTitle: 'Black Lives Matter',
    );
  }

  Widget _buildInteredList() {
    List<ExplorerInterestedEntity> interesteds = [
      ExplorerInterestedEntity(
          photo:
              Image.asset("assets/images/explorer_008.png", fit: BoxFit.cover),
          name: 'Tereza',
          position: 'Sênior iOS Developer',
          place: 'São Paulo',
          typeOfWork: 'Remotely',
          salary: 'R\$ 16,000/month'),
      ExplorerInterestedEntity(
          photo:
              Image.asset("assets/images/explorer_002.jpg", fit: BoxFit.cover),
          name: 'Gabriela',
          position: 'Flutter Developer',
          place: 'London',
          typeOfWork: 'Remotely',
          salary: '£ 400/day'),
      ExplorerInterestedEntity(
          photo:
              Image.asset("assets/images/explorer_001.jpg", fit: BoxFit.cover),
          name: 'Maya',
          position: 'Sr. Business Manager',
          place: 'London',
          typeOfWork: 'Remotely',
          salary: '£ 129/day'),
      ExplorerInterestedEntity(
          photo:
              Image.asset("assets/images/explorer_010.jpeg", fit: BoxFit.cover),
          name: 'Elisabeth',
          position: 'AWS Solutions Architect',
          place: 'Amsterdam',
          typeOfWork: 'Remotely',
          salary: ''),
    ];

    return ExplorerInterestedSection(
      interesteds: interesteds,
      sectionTitle: 'Help friends and get paid',
    );
  }
}
