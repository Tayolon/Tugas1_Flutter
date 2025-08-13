import 'package:get/get.dart';
import 'package:latihan_11pplg2/customitem/model_player.dart';


class FootballPlayerController extends GetxController {
  var players = <Player>[
    Player(
      nama: 'Lionel Messi',
      posisi: 'Forward',
      nomorPunggung: 10,
      imageAsset: 'image/Messi.png',
    ),
    Player(
      nama: 'Cristiano Ronaldo',
      posisi: 'Forward',
      nomorPunggung: 7,
      imageAsset: 'image/Ronaldo.webp',
    ),
     Player(
      nama: 'Neymar Jr',
      posisi: 'Forward',  
      nomorPunggung: 11,
      imageAsset: 'image/Neymar.jpg',
    ),
    Player(
      nama: 'Kylian Mbappé',
      posisi: 'Forward',
      nomorPunggung: 7,
      imageAsset: 'image/Kylian.png',
    ),
    Player(
      nama: 'Kevin De Bruyne',
      posisi: 'Midfielder',
      nomorPunggung: 17,
      imageAsset: 'image/Bruyne.jpg',
    ),
  ].obs;

  void updatePlayer(int index, String nama, String posisi, int nomorPunggung) {
    players[index].nama = nama;
    players[index].posisi = posisi;
    players[index].nomorPunggung = nomorPunggung;
    players.refresh();
  }
}
