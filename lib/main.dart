import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nocu/src/core/constants/data.dart';
import 'package:nocu/src/core/controllers/theme_controller.dart';
import 'package:nocu/src/ui/pages/home_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ThemeController.instance.initTheme(),
      builder: (snapshot, context) {
        // materialApp
        return MaterialApp(
          // routes
          routes: {
            HomePage.homePageRoute: (context) => HomePage(),
          },
          // home: Container(),
          debugShowCheckedModeBanner: false,
          title: Constants.mainTitle,
          theme: ThemeData(
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          initialRoute: HomePage.homePageRoute,
        );
      },
    );
  }
}
