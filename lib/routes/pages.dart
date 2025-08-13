import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:latihan_11pplg2/controllers/editfootball_player_controller.dart';
import 'package:latihan_11pplg2/pages/Calculator_page.dart';
import 'package:latihan_11pplg2/pages/Football_player.dart';
import 'package:latihan_11pplg2/routes/route.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.FootballPage, page: () => FootballPlayer()),
    GetPage(
      name: AppRoutes.EditFootballPage,
      page: () {
        final index = Get.arguments as int;
        return EditPlayerPage(index: index);
      },
    ),
  ];
}
