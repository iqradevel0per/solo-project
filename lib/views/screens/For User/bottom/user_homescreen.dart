import 'package:flutter/material.dart';
import 'package:solo_project/views/screens/For%20Admin/all-user_layout.dart';
import 'package:solo_project/views/screens/For%20User/bottom/fav_product.dart';

import 'package:solo_project/views/screens/For%20User/bottom/user_product_layout.dart';

class UserHomescreen extends StatefulWidget {
  const UserHomescreen({super.key});

  @override
  State<UserHomescreen> createState() => _UserHomescreenState();
}

class _UserHomescreenState extends State<UserHomescreen> {
  int newIndex = 0;
  List screen = [
    UserProductLayout(),
    FavProduct(
      productTitle: "Mens Shoe",
      productSubtitle: "Footwear",
      productImage: "assets/images/sevenshoe.jpeg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            newIndex = index;
          });
        },
        currentIndex: newIndex,
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        selectedItemColor: const Color.fromARGB(255, 98, 155, 202),
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "ayvin"),
        ],
      ),
      body: screen[newIndex],
    );
  }
}
