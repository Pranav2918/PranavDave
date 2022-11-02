import 'package:flutter/material.dart';
import 'package:pranavdave/config/assets.dart';

import '../tabs/about_tab.dart';
import '../tabs/projects_tab.dart';
import '../widgets/theme_inherited_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    const AboutTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn!
                ? const Icon(Icons.web)
                : Image.asset(ImageAsset.moon),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Center(
        child: tabWidgets.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'About', tooltip: 'About'),
          BottomNavigationBarItem(
              icon: Icon(Icons.work_outline_rounded),
              label: 'Projects',
              tooltip: 'Projects')
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
