import 'package:flutter/widgets.dart';

class HomeCardEntity {
  final List<Image> images;
  final Color tagColor;
  final String tagTitle;
  final String companyName;
  final String companyMarket;
  final String companyPlace;
  final String companyScheduleAlert;

  const HomeCardEntity({
    required this.tagColor,
    required this.tagTitle,
    required this.companyName,
    required this.companyMarket,
    required this.companyPlace,
    required this.companyScheduleAlert,
    required this.images,
  });
}
