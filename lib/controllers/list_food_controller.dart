import '../models/food_model.dart';

class ListFoodController {
  final List<FoodModel> daftarMakanan = [
    FoodModel(
      judul: 'Nasi Goreng Spesial',
      deskripsiSingkat: 'nasi goreng telur ayam + kerupuk.',
      harga: 'Rp 25.000',
      gambar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmCov1c0iPvvFtHwQoPTsXglMFChTTHuXKd2CKaPqG7lZMp_dvJo18wCY&s=10',
      review: '4.8 / 5.0',
    ),
    FoodModel(
      judul: 'Sate Ayam Madura',
      deskripsiSingkat: 'sate ayam khas madura.',
      harga: 'Rp 30.000',
      gambar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-9-ZBb3EUrl-W6hGto151fV2DK0BQQbJtxxZbMyxdnQ&s=10',
      review: '4.9 / 5.0',
    ),
    FoodModel(
      judul: 'Rendang Daging Sapi Khas Padang',
      deskripsiSingkat: 'rendang daging sapi khas Padang.',
      harga: 'Rp 40.000',
      gambar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfQZ2LyYsGJf8Aw4Ebd3TKbURx7VwkM4cbVokn1Km4HDWamaxYhGv98QY&s=10',
      review: '5.0 / 5.0',
    ),
    FoodModel(
      judul: 'Bakso Kuah Malang',
      deskripsiSingkat: 'bakso urat malang + pangsit.',
      harga: 'Rp 20.000',
      gambar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8tyMAvJXJ7ZlkkuCkp944Osrb24Mi8pf3LpOL8-MjQY-geF2ox3P9Jvc&s=10',
      review: '4.7 / 5.0',
    ),
  ];
}