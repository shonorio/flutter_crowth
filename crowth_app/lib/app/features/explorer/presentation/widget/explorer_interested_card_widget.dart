import 'package:design_systems/design_systems.dart';

import '../../domain/entity/explorer_interested_entity.dart';
import 'package:flutter/material.dart';

class ExplorerInterestedCardWidget extends StatelessWidget {
  const ExplorerInterestedCardWidget({
    Key? key,
    required this.interested,
  }) : super(key: key);

  final ExplorerInterestedEntity interested;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 156,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 112,
            child: interested.photo,
          ),
          Container(
            padding: const EdgeInsets.all(2.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    interested.name + " is interested in",
                    style: crowthThemesLight.textTheme.caption,
                  ),
                  Text(interested.position),
                  Text(interested.place + " • " + interested.typeOfWork),
                  Text(interested.salary),
                ]),
          )
        ],
      ),
    );
  }
}
