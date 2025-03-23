import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProductScreen extends StatefulWidget {
  AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  XFile? pickedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        title: Text(
          "Adding Products",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Product Name",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "About this:",

                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Product benefits, encompassing both functional and emotional advantages, are the reasons why customers choose a product and how it enhances their lives or business operations. They are crucial for driving sales, building brand loyalty, and achieving product-market fit. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () async {
                    ImagePicker picker = ImagePicker();
                    var pickImage = await picker.pickImage(
                      source: ImageSource.gallery,
                    );
                    //
                    if (pickImage != null) {
                      setState(() {
                        pickedFile = pickImage;
                      });
                    }
                  },
                  child:
                      pickedFile == null
                          ? Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 30),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 193, 211, 242),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Icon(Icons.camera_alt_outlined, size: 80),
                          )
                          : Container(
                            height: 200,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 30),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Color(0xff88B2B5),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(File(pickedFile!.path)),
                              ),
                            ),
                          ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
