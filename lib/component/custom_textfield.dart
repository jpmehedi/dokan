import 'package:dokan/utils/app_color.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
final String? hintText;
final Widget? suffixIcon;
final Widget? prefixIcon;
final TextEditingController? controller;

final bool obscureText;
  const CustomTextField({
    Key? key, this.hintText,this.prefixIcon, this.suffixIcon, this.obscureText = false, this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey.withOpacity(0.01),
      elevation: 5,
      shadowColor: Colors.grey,
      child: TextFormField(
        controller: controller ,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.white,
          
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColor.secondaryTextColor
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon
        ),
      ),
    );
  }
}