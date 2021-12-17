import 'package:assignment/widgets/item_block.dart';
import 'package:flutter/material.dart';

class BlockList extends StatelessWidget {
  const BlockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: 360.0,
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: const [
            ItemBlock(),
            SizedBox(
              height: 10.0,
            ),
            ItemBlock(),
            SizedBox(
              height: 10.0,
            ),
            ItemBlock(),
            SizedBox(
              height: 10.0,
            ),
            ItemBlock(),
            SizedBox(
              height: 10.0,
            ),
            ItemBlock(),
          ],
        ),
      ),
    );
  }
}
