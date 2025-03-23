import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_project/views/screens/For%20Admin/add_product_screen.dart';

class AllUserLayout extends StatelessWidget {
  const AllUserLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        title: Text(
          "User Information",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => AddProductScreen());
            },
            icon: Icon(Icons.info, size: 27),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                padding: EdgeInsets.only(bottom: 5, top: 5, left: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        "assets/images/shoe.one.jpeg",
                      ),
                    ),
                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text("abc@gmail.com", style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    Spacer(),

                    IconButton(
                      icon: Icon(Icons.delete, size: 25),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
