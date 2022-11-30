import 'package:flutter/material.dart';


GlobalKey<ScaffoldState> homePageKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }): super(key: key);
  static const homePageRoute = "homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homePageKey,
      body: Container(
        child: Center(child: Text("Primer Texo"),),
      ),
    );
  }
}