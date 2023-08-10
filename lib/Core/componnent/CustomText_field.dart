import 'package:flutter/material.dart';
import 'package:meal_app/constants.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller; // Add the TextEditingController property
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final Function? onFieldSubmitted;
  final Function? onChanged;
  final String? Function(String? val)? validator;
  final TextAlignVertical textAlignVertical;
  final Color textColor;
  final String hintText;
  final double radius;
  final IconData? prefixIcon;
  final String? prefixText;

  const CustomTextField({
    Key? key,
    this.controller, // Make it a required property
    required this.keyboardType,
    this.obscureText = false,
    this.enabled = true,
    this.onFieldSubmitted,
    this.onChanged,
    this.validator,
    this.textAlignVertical = TextAlignVertical.center,
    this.textColor = Colors.black,
    this.hintText = 'Your Email',
    required this.radius,
    this.prefixIcon,
    this.prefixText,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(widget.radius),
      ),
      child: TextFormField(
        controller: widget.controller, // Use the provided controller
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        enabled: widget.enabled,
        onFieldSubmitted: widget.onFieldSubmitted != null ? (_) => widget.onFieldSubmitted!() : null,
        onChanged: widget.onChanged != null ? (val) => widget.onChanged!(val) : null,
        validator: widget.validator,
        textAlignVertical: widget.textAlignVertical,
        style: TextStyle(
          color: widget.textColor,
        ),
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            color: Colors.amber,
          ),
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Metropolis-Regular',
            fontSize: 16,
            color: placeholder,
          ),
          prefixIcon: widget.prefixIcon != null ? Icon(
            widget.prefixIcon,
            color: Colors.deepOrange,
          ) : null,
          prefixText: widget.prefixText,
        ),
      ),
    );
  }
}
