class GameModel {
// kenapa final? karena data nilai gak bisa di ubah2 disebut imutable.
  final String judul;
  final String tahunRilis;
  final String kategori;
  final String pengembang;
  final String deskripsiSingkat;
  final String gambarAset;

// Constructor
  GameModel({
    required this.judul,
    required this.tahunRilis,
    required this.kategori,
    required this.pengembang,
    required this.deskripsiSingkat,
    required this.gambarAset,
  });
}