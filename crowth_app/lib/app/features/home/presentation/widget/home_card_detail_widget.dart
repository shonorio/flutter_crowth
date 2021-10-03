import '../../domain/entity/home_card_entity.dart';
import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

class HomeCardDetailWidget extends StatelessWidget {
  const HomeCardDetailWidget({
    Key? key,
    required this.dataSource,
  }) : super(key: key);

  final HomeCardEntity dataSource;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(dataSource.companyMarket,
                    style: crowthThemesLight.textTheme.subtitle1),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                Text(dataSource.companyName,
                    style: crowthThemesLight.textTheme.subtitle2),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.place_outlined),
                ),
                Text(dataSource.companyPlace,
                    style: crowthThemesLight.textTheme.subtitle2),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.schedule_outlined),
                ),
                Text(dataSource.companyScheduleAlert,
                    style: crowthThemesLight.textTheme.subtitle2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
