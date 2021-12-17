import 'package:assignment/widgets/reviews_widget.dart';
import 'package:assignment/widgets/size_chips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text("Cart"),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet),
            )
          ],
        ),
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 350.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffDD7A42),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Hero(
                    tag: "shoes",
                    child: Image(
                      image: AssetImage("assets/images/img.png"),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 134.0,
                    top: 30.0,
                  ),
                  child: Text(
                    "Nike Shoes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 145.0,
                    top: 10.0,
                  ),
                  child: Text(
                    "Mens Running Shoes",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizeChip(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Description!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    letterSpacing: 10.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  "We Provide Best Shoes",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  "Our Catalog",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    ReviewsWidget(),
                    ReviewsWidget(),
                    ReviewsWidget(),
                    ReviewsWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xffDD7A42),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
