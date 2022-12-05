import 'package:flutter/material.dart';
import 'package:nocu/src/core/controllers/theme_controller.dart';

class CardButton extends StatelessWidget {
  final String title;
  final bool primaryColor;
  final IconData? icon;
  final Function? onTap;
  const CardButton(
      {Key? key,
      this.title = "",
      this.primaryColor = true,
      this.icon,
      this.onTap})
      : super(key: key);

  Color getColorButton() {
    return ThemeController.instance.background();
  }

  Color getColorText() {
    return ThemeController.instance.brightnessValue
        ? Colors.black
        : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
          color: getColorButton(), borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null ? Icon(icon, size: 28, color: getColorText(),) : SizedBox(),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(color: getColorText(), fontSize: 16),
          )
        ],
      ),
    );
  }
}
