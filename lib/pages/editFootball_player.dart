import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_11pplg2/controllers/football_player_controller.dart';
import 'package:latihan_11pplg2/routes/route.dart';
class EditPlayerPage extends StatelessWidget {
  final int index;
  final FootballPlayerController playerController = Get.put(
    FootballPlayerController(),
  );

  EditPlayerPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final player = playerController.players[index];

    final namaController = TextEditingController(text: player.nama);
    final posisiController = TextEditingController(text: player.posisi);
    final nomorController = TextEditingController(
      text: player.nomorPunggung.toString(),
    );

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Pemain")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: posisiController,
              decoration: const InputDecoration(labelText: "Posisi"),
            ),
            TextField(
              controller: nomorController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Nomor Punggung"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final parsedNomor = int.tryParse(nomorController.text);
                playerController.updatePlayer(
                  index,
                  namaController.text.trim(),
                  posisiController.text.trim(),
                  parsedNomor ?? player.nomorPunggung,
                );
                Get.back();
                Get.snackbar(
                  "Sukses",
                  "Data pemain diperbarui",
                  snackPosition: SnackPosition.BOTTOM,
                  duration: const Duration(seconds: 2),
                );
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
