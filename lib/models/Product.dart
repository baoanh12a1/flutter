import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double  price;
  final double rating;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/thitbo_1.png",
      "assets/images/thitbo_2.png",
      "assets/images/thitbo_3.png",
      "assets/images/thitbo_4.png",
      "assets/images/thitbo_5.png",
    ],
    colors: [
      Color(0xFFF44336),
      Color(0xFFF57C00),
      Color(0xFFFFF176)
    ],
    title: "Thịt bò Úc loại 1",
    price: 450,
    description: "Thịt bò hảo hạng với thương hiệu tới từ nước Úc",
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/tomsu.png",
      "assets/images/tomsu_1.png",
      "assets/images/tomsu_2.png",
    ],
    colors: [
      Color(0xFFF44336),
      Color(0xFFF57C00),
      Color(0xFFFFF176)
    ],
    title: "Tôm sú loại 1",
    price: 270,
    description: "Tôm sú tươi ngon, nhập hàng ngay khi vừa đánh bắt",
    rating: 4.9,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/gathavuon.png",
      "assets/images/gathavuon_1.png",
      "assets/images/gathavuon_2.png",
    ],
    colors: [
      Color(0xFFF44336),
      Color(0xFFF57C00),
      Color(0xFFFFF176)
    ],
    title: "Gà thả vườn loại 1",
    price: 120,
    description: "Gà thả vườn dai ngon tròn vị, với chế độ chăn nuôi leo 1 quả đồi 1 ngày",
    rating: 4.7,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/cahoi.png",
      "assets/images/cahoi_1.png",
      "assets/images/cahoi_2.png",
      "assets/images/cahoi_3.png",
    ],
      colors: [
        Color(0xFFF44336),
        Color(0xFFF57C00),
        Color(0xFFFFF176)
    ],
    title: "Cá hồi phi lê loại 1",
    price: 150,
    description: "Những miếng cá hồi được khai thác từ những chú cá đã vượt qua biển Thái Bình Dương vào mùa sinh sản",
    rating: 4.6,
    isFavourite: true,
    isPopular: true
  ),
  Product(
      id: 5,
      images: [
        "assets/images/xoai.png",
        "assets/images/xoai_1.png",
        "assets/images/xoai_2.png",
      ],
      colors: [
        Color(0xFFF44336),
        Color(0xFFF57C00),
        Color(0xFFFFF176)
      ],
      title: "Xoài cát loại 1",
      price: 85,
      description: "Được trồng với kỹ thuật đỉnh cao cùng với tay nghề lão làng của nghệ "
          "nhân trồng xoài đã cho ra đời những quả xoài chất lượng nhất",
      rating: 4.4,
      isFavourite: false,
      isPopular: true
  ),
];


