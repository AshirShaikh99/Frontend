import 'package:flutter/material.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffDD7A42),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: const Image(
        width: 100.0,
        height: 100.0,
        image: AssetImage("assets/images/img.png"),
      ),
    );
  }
}
