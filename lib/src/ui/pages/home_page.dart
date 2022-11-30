import 'package:flutter/material.dart';

import 'package:nocu/src/core/controllers/theme_controller.dart';

GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const homePageRoute = "home_page";

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ThemeController.instance.brightness,
        builder: (BuildContext context, value, Widget? child) {
          final theme = ThemeController.instance;
          return Scaffold(
              backgroundColor: theme.background(),
              key: homePageKey,
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "Primer Texo",
                        style: TextStyle(fontSize: 20, color: theme.primary()),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () => theme.changeTheme(),
                      child: Text("Accion"))
                ],
              ));
        });
  }
}
