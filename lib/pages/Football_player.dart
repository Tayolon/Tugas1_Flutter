import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/controllers/editfootball_player_controller.dart';
import 'package:latihan_11pplg2/controllers/football_player_controller.dart';
import 'package:latihan_11pplg2/routes/route.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPlayerController footballPlayerController = Get.put(
    FootballPlayerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("United")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballPlayerController.players.length,
            itemBuilder: (context, index) {
              final player = footballPlayerController.players[index];
              return ListTile(
                onTap: () {

                  print("player clicked : ${player.nama}");
                  Get.toNamed(AppRoutes.EditFootballPage ,arguments: index);
                },
                leading: Image.asset(player.imageAsset, width: 48, height: 48),
                title: Text(player.nama),
                subtitle: Text("${player.posisi} • ${player.nomorPunggung}"),
              );
            },
          ),
        ),
      ),
    );
  }
}
