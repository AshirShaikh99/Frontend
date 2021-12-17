import 'package:flutter/material.dart';

class SizeChip extends StatefulWidget {
  const SizeChip({Key? key}) : super(key: key);

  @override
  _SizeChipState createState() => _SizeChipState();
}

class _SizeChipState extends State<SizeChip> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Chip(
          label: Text(
            "36",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        Chip(
          label: Text(
            "37",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Color(0xffE8A681),
        ),
        Chip(
          label: Text("38"),
          backgroundColor: Color(0xffE8A681),
        ),
        Chip(
          label: Text("39"),
          backgroundColor: Color(0xffE8A681),
        ),
        Chip(
          label: Text("40"),
          backgroundColor: Color(0xffe8a681),
        ),
      ],
    );
  }
}
