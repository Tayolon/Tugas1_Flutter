import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/pages/Calculator_page.dart';
import 'package:latihan_11pplg2/pages/Football_player.dart';
import 'package:latihan_11pplg2/pages/Profile_page.dart';
// ⬇️ ADD THIS IMPORT for AppPages
import 'package:latihan_11pplg2/routes/pages.dart';

void main() {
  runApp(MyApp());
}

class NavController extends GetxController {
  var selectedIndex = 0.obs;
  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}

class MyApp extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Navigation',
      getPages: AppPages.pages,
      home: Scaffold(
        body: Obx(() {
          switch (navController.selectedIndex.value) {
            case 0:
              return CalculatorPage();
            case 1:
              return FootballPlayer();
            case 2:
              return ProfilePage();
            default:
              return CalculatorPage();
          }
        }),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: navController.selectedIndex.value,
            onTap: navController.changeTabIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Calculator",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: "Player",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
