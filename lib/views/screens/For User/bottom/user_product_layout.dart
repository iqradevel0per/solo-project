import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_project/views/screens/For%20User/bottom/fav_product.dart';
import 'package:solo_project/views/screens/For%20User/product_detail.dart';

class UserProductLayout extends StatelessWidget {
  UserProductLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        title: Text(
          "All Products",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 11,
          // mainAxisSpacing: 11,
        ),
        itemCount: 20,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 197, 210, 234),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(
                        () => ProductDetail(
                          productTitle: "Mens Shoe",
                          productSubtitle: "Footwear",
                          productImage: "assets/images/sevenshoe.jpeg",
                        ),
                      );
                    },
                    child: Container(
                      //height: 120,
                      // width: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 15,
                          left: 15,
                          bottom: 5,
                        ),
                        child: Image.asset(
                          "assets/images/sevenshoe.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Mens Shoe",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Footwear Comfort",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
