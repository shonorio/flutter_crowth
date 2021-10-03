import 'package:flutter/material.dart';

import 'home_card_detail_widget.dart';
import 'home_card_header_widget.dart';
import '../../domain/entity/home_card_entity.dart';

class HomeCard extends StatelessWidget {
  final HomeCardEntity dataSource;
  const HomeCard({
    Key? key,
    required this.dataSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xfff0f9f4),
        borderRadius: BorderRadius.circular(18.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          HomeCardHeaderWidget(dataSource: dataSource),
          HomeCardDetailWidget(dataSource: dataSource)
        ],
      ),
    );
  }
}
