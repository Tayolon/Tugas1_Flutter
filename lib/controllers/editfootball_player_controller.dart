import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'football_player_controller.dart';


class EditPlayerPage extends StatelessWidget {
  EditPlayerPage({super.key, required this.index});

  final int index;
  final FootballPlayerController playerController = Get.find();

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
                final parsed = int.tryParse(nomorController.text);
                playerController.updatePlayer(
                  index,
                  namaController.text.trim(),
                  posisiController.text.trim(),
                  parsed ?? player.nomorPunggung,
                );
                Get.back(); // kembali ke list
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
