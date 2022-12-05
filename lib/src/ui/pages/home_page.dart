import 'package:flutter/material.dart';

import 'package:nocu/src/core/controllers/theme_controller.dart';
import 'package:nocu/src/ui/widgets/buttons/card_button.dart';
import 'package:nocu/src/ui/widgets/buttons/simple_buttons.dart';
// import 'package:nocu/src/core/models/note.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  static const homePageRoute = "home_page";

  final _url = 'https://pub.dev/packages/url_launcher/versions/6.1.2';

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
                      child: Text("Accion")),
                  //open_url 
                  ElevatedButton(
                      onPressed: ()async{
                        if(await canLaunchUrlString(_url)){
                          launchUrlString(_url);
                        }
                      },
                      child: Text("Url")),
                  MediumButton(
                    title: "Bottoon nuevo",
                    onTap: (){},
                  ),
                  CardButton(title: "PDF", icon: Icons.book,)
                ],
              ));
        });
  }
}
