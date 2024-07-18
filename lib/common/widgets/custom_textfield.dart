import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    required this.obscurePassword,
    required this.suffixIcon,
  });

  final TextEditingController controller;
  final String hintText;
  final bool obscurePassword;
  final String? Function(String?)? validator;
  final Widget suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: const Color(0xff13359E),),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              validator: validator,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: obscurePassword,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.5),
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            child: suffixIcon,
          )
        ],
      ),
    );
  }
}