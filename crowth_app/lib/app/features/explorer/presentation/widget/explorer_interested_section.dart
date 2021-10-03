import 'package:flutter/material.dart';
import 'package:design_systems/design_systems.dart';

import '../../domain/entity/explorer_interested_entity.dart';
import 'explorer_interested_card_widget.dart';

class ExplorerInterestedSection extends StatelessWidget {
  const ExplorerInterestedSection({
    Key? key,
    required this.sectionTitle,
    required this.interesteds,
  }) : super(key: key);

  final String sectionTitle;
  final List<ExplorerInterestedEntity> interesteds;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSectionHeader(),
        _buildCardSection(),
      ],
    );
  }

  Widget _buildCardSection() {
    return Container(
      height: 250,
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(6.0),
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: interesteds.length,
        controller: PageController(initialPage: 0, viewportFraction: 0.4),
        itemBuilder: (_, int page) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExplorerInterestedCardWidget(interested: interesteds[page]),
          );
        },
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 24.0, right: 12.0),
      child: Row(
        children: [
          Text(
            sectionTitle,
            style: crowthThemesLight.textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
