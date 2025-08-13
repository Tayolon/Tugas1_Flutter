import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/login_page.dart';
import 'package:latihan_11pplg2/pages/Calculator_page.dart';
import 'package:latihan_11pplg2/routes/pages.dart';
import 'package:latihan_11pplg2/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.calculatorPage,
      getPages: AppPages.pages,
    );
  }
}
