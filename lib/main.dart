import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solo_project/firebase_options.dart';
import 'package:solo_project/views/screens/For%20Admin/admin_homescreen.dart';
import 'package:solo_project/views/screens/For%20User/bottom/fav_product.dart';
import 'package:solo_project/views/screens/For%20User/bottom/user_homescreen.dart';
import 'package:solo_project/views/screens/For%20User/bottom/user_product_layout.dart';
import 'package:solo_project/views/screens/For%20User/product_detail.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AdminHomescreen(),
    );
  }
}
