import 'package:design_systems/design_systems.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({Key? key, String? title})
      : super(
          key: key,
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: title == null
              ? null
              : Text(
                  title,
                  style: crowthThemesLight.textTheme.headline5
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.speaker_notes_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ),
            ),
          ],
        );
}
