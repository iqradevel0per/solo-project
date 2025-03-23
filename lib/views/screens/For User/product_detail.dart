import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:solo_project/views/screens/For%20User/bottom/fav_product.dart';

class ProductDetail extends StatelessWidget {
  final String productTitle;
  final String productSubtitle;
  final String productImage;

  ProductDetail({
    super.key,
    required this.productTitle,
    required this.productSubtitle,
    required this.productImage,
  });




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        title: Text(
          "Product Details",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        shape: CircleBorder(),
        onPressed: () {
          Get.to(() => FavProduct( productTitle: "Mens Shoe",
                          productSubtitle: "Footwear",
                          productImage: "assets/images/sevenshoe.jpeg",));
        },
        child: Icon(Icons.favorite_outline),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 250,
                    padding: EdgeInsets.all(50),
                    child: Image.asset(productImage),
                  ),
                  ListTile(
                    title: Text(
                      productTitle,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      productSubtitle,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Details:",

                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Proper footwear provides essential support, cushioning, and stability, reducing stress on feet, ankles, knees, and hips, and can improve posture and balance.Proper footwear provides essential support, cushioning, and stability, reducing stress on feet, ankles, knees, and hips, and can improve posture and balance, ultimately safeguarding mobility and independence. ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Price:",

                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 16, 77, 127),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "\$300",

                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
