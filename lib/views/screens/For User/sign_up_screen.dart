import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_project/views/screens/For%20Admin/all_product_layout.dart';
import 'package:solo_project/views/screens/For%20User/log_in_screen.dart';
import 'package:solo_project/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 193, 211, 242),
        title: Text(
          "Sign Up",
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 40,
                bottom: 15,
              ),
              child: CustomTextField(
                controller: lastController,

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                hintText: "Write your First Name",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 10,
                bottom: 15,
              ),
              child: CustomTextField(
                controller: nameController,

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                hintText: "Write your Last Name",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 10,
                bottom: 15,
              ),
              child: CustomTextField(
                controller: emailController,

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                hintText: "abc@gmail.com",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 10,
                bottom: 15,
              ),
              child: CustomTextField(
                controller: passwordController,

                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                hintText: "............",
                hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
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
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                Get.to(AllProductLayout());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 193, 211, 242),
                fixedSize: Size(350, 50),
              ),
              child: Text(
                "SignIn",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don’t have an account?",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: " LogIn",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 121, 168, 250),
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap = () {
                              Get.to(() => LogInScreen());
                            },
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
