import 'package:flutter/material.dart';
import 'package:solo_project/views/screens/For%20Admin/all-user_layout.dart';
import 'package:solo_project/views/screens/For%20Admin/all_product_layout.dart';
import 'package:solo_project/views/screens/For%20User/bottom/fav_product.dart';

class AdminHomescreen extends StatefulWidget {
  const AdminHomescreen({super.key});

  @override
  State<AdminHomescreen> createState() => _AdminHomescreenState();
}

class _AdminHomescreenState extends State<AdminHomescreen> {
  int myIndex = 0;
  List screens = [AllProductLayout(), AllUserLayout()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        selectedItemColor: const Color.fromARGB(255, 98, 155, 202),
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: "ayvin",
          ),
        ],
      ),
     
      body: screens[myIndex],
    );
  }
}
