import 'package:assignment/screens/cart.dart';
import 'package:flutter/material.dart';

class ItemBlock extends StatelessWidget {
  const ItemBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        color: const Color(0xffDD7A42),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          const Positioned(
            child: Hero(
              tag: "shoes",
              child: Image(
                image: AssetImage("assets/images/img.png"),
              ),
            ),
          ),
          const Positioned(
            top: 50.0,
            left: 190.0,
            child: Text(
              "Nike Shoes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ),
          Positioned(
            top: 130.0,
            left: 240.0,
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: 60.0,
                height: 30.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const StadiumBorder(),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                child: const Text("Buy"),
              ),
            ),
          ),
          const Positioned(
            top: 110.0,
            left: 190.0,
            child: Text(
              "200\$",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
