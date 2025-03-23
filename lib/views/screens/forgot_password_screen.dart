import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:solo_project/views/screens/For%20Admin/all_product_layout.dart';
import 'package:solo_project/views/screens/For%20User/log_in_screen.dart';
import 'package:solo_project/views/screens/For%20User/sign_up_screen.dart';
import 'package:solo_project/widgets/custom_text_field.dart';

class ForgotPaawordScreen extends StatelessWidget {
  ForgotPaawordScreen({super.key});

  TextEditingController forgotPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        title: Text(
          "Forgot Password",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        leadingWidth: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, size: 22, color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 50,
                  bottom: 0,
                ),
                child: CustomTextField(
                  controller: forgotPasswordController,

                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 13,
                  ),
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  //  suffixIcon: IconButton(
                  //  onPressed: () {},
                  //  icon: Icon(Icons.messenger_outline_outlined),
                  // ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 193, 211, 242),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  cursorColor: Colors.black,
                ),
              ),

              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => AllProductLayout());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 193, 211, 242),
                  fixedSize: Size(350, 50),
                ),
                child: Text(
                  "Send Email",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
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
