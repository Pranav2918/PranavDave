import 'package:flutter/cupertino.dart';

import '../model/projectmodel.dart';
import 'assets.dart';

final List<Project> projects = [
  Project(
      image: ImageAsset.dummyProject,
      name: 'Tic Tac Toe',
      description:
          'It is a game that two can play, and we all did in our childhood :)',
      link: '3t.netlify.app'),
  Project(
      image: ImageAsset.dummyProject,
      name: 'Solar System',
      description:
          'This app consist planets and their information with amazing UI.',
      link: 'https://github.com/Pranav2918/SolarSystem'),
  Project(
      image: ImageAsset.dummyProject,
      name: 'BMI Calculator',
      description:
          'You can calculate your Body Mass Index(BMI) with just giving an input. And you are good to go with lovely UI.',
      link: 'https://github.com/Pranav2918/BMI-Calculator'),
  Project(
      image: ImageAsset.dummyProject,
      name: 'Flutter Designs',
      description:
          'This app contains every type of UI design. Including animation, login, Profile, settings and many other.',
      link:
          'https://github.com/Pranav2918/FlutterDesigns'),
];
