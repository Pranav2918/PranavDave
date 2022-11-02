import 'package:flutter/material.dart';
import 'package:pranavdave/config/assets.dart';
import 'dart:html' as html;

import '../config/constants.dart';
import '../widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset(ImageAsset.avatar).image,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Pranav Dave',
                textScaleFactor: 4,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Designs. Flutter. Cricket. Music.\nLikes Traveling.',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    tooltip: "Github",
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(ImageAsset.github)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'pranavdave'),
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    tooltip: "Instagram",
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(ImageAsset.instagram)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'pranavdave'),
                  ),
                  const SizedBox(width: 50),
                  IconButton(
                    tooltip: "Linkedin",
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(ImageAsset.linkedin)),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'pranavdave'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
