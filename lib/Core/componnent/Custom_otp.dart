import 'package:flutter/material.dart';

class CustomOtp extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final double borderRadius;
  final Widget child;

  const CustomOtp({
    Key? key,
    this.width = 60.0,
    this.height = 60.0,
    this.color = const Color(0xFFF2F2F2),
    this.borderRadius = 10,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: color,
      ),
      child: child,
    );
  }
}
