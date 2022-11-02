import 'package:flutter/material.dart';
import 'package:pranavdave/pages/home_page.dart';
import 'package:pranavdave/widgets/theme_inherited_widget.dart';

import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: PranavDave(),
    );
  }
}
class PranavDave extends StatelessWidget {
  const PranavDave({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pranav Dave',
      theme: ThemeSwitcher.of(context).isDarkModeOn! ? darkTheme(context) : lightTheme(context),
      home: const HomePage(),
    );
  }
}
