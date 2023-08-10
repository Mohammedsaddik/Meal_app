import 'package:flutter/material.dart';
import 'package:meal_app/constants.dart';

class DefaultButton extends StatelessWidget {
  final double width;
  final double height;
  final String buttonText;
  final VoidCallback onPressed;
  final Color color;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final Color fontColor;
  final String? imagePath;
  final IconData? icon;
  final double fontSize;

   const DefaultButton({
    Key? key,
    this.width = double.infinity,
    this.height = 50.0,
    this.buttonText = '',
    required this.onPressed,
    this.color = Colors.deepOrange,
    this.borderRadius = 30,
    this.borderWidth = 20,
    this.borderColor = Colors.deepOrange,
    this.fontColor = Colors.white,
    this.imagePath,
    this.icon,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
          width: borderWidth,
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imagePath != null)
              Image.asset(
                imagePath!,
                width: 24,
                height: 24,
                color: fontColor,
              ),
            if (icon != null)
              Expanded(
                flex: 0,
                child: Icon(icon, color: fontColor,
                ),
              ),
            const SizedBox(width: 8),
            Text(
              buttonText,
              style: TextStyle(
                color: fontColor,
                fontSize: fontSize,
                fontFamily: KMetropolisSemiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
