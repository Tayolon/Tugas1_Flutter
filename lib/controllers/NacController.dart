import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: MainPage()));
}

class NavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedIndex.value = index;
  }
}

class MainPage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [Calculator_page(), EditFootballPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[navController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,
          onTap: navController.changeTabIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Calculator"),
            BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: "Player"),
            BottomNavigationBarItem(icon: Icon(Icons.person_off_rounded), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

class Calculator_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Calculator Page", style: TextStyle(fontSize: 24)));
  }
}

class EditFootballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Football Player Page", style: TextStyle(fontSize: 24)));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile Page", style: TextStyle(fontSize: 24)));
  }
}
