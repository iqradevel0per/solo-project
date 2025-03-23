import 'package:flutter/material.dart';

class FavProduct extends StatelessWidget {
  final String productTitle;
  final String productSubtitle;
  final String productImage;
  const FavProduct({
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
          'Favourite Products',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(productImage),
                    ),
                    SizedBox(width: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(productSubtitle, style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    Spacer(),

                    IconButton(
                      icon: Icon(Icons.favorite_border, size: 25),
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
