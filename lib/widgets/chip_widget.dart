import 'package:flutter/material.dart';

class BuildChip extends StatelessWidget {
  const BuildChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Chip(
          label: Text(
            "All",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        Chip(
          label: Text(
            "Shoes",
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: Color(0xffE8A681),
        ),
        Chip(
          label: Text("Bag"),
          backgroundColor: Color(0xffE8A681),
        ),
        Chip(
          label: Text("Clothing"),
          backgroundColor: Color(0xffE8A681),
        ),
        Chip(
          label: Text("Cap"),
          backgroundColor: Color(0xffe8a681),
        ),
      ],
    );
  }
}
