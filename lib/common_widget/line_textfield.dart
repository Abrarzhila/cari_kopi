import 'package:cari_kopi_1/common/color_extenstion.dart';
import 'package:flutter/material.dart';

class LineTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hitText;
   final bool obscureText;
  const LineTextField(
      {super.key, required this.hitText, required this.controller, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        decoration: InputDecoration(
            hintText: hitText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TColor.primary),
            ),

            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TColor.gray),
              ),


            ),
      ),
    );
  }
}
