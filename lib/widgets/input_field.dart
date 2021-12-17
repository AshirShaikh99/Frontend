import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.airplay_sharp,
            color: Colors.black,
            size: 18.0,
          ),
          hintText: text,
          filled: true,
          hintStyle: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w300,
            color: Colors.black,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 70.0,
            vertical: 20.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
