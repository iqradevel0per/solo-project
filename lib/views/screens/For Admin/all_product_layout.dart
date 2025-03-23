import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_project/views/screens/For%20User/product_detail.dart';

class AllProductLayout extends StatelessWidget {
  const AllProductLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        title: Text(
          "User Products",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      //   Get.to(() => ProductDetail());
                    },
                    leading: Icon(Icons.person, size: 30, color: Colors.black),

                    title: Text(
                      "Shoes",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      "Shoes",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        // Get.to(() => ProductDetail());
                      },
                      icon: Icon(Icons.perm_device_information_outlined),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
