import 'package:flutter/cupertino.dart';

class ProductDTO {
  final String backgroundImage;
  final String sellerName;
  final String productTitle;
  final int originPrice;
  final int discountRate;
  final int discountedPrice;

  ProductDTO(
      {required this.backgroundImage,
      required this.sellerName,
      required this.productTitle,
      required this.originPrice,
      required this.discountRate,
      required this.discountedPrice});

  List<ProductDTO> productDTOs = [
    ProductDTO(
        backgroundImage: "assets/images/product01.jpg",
        sellerName: "어글어글",
        productTitle: "칠면조&채소 믹스 스팀",
        originPrice: 16600,
        discountRate: 24,
        discountedPrice: 12400),
    ProductDTO(
        backgroundImage: "assets/images/product02.jpg",
        sellerName: "라호",
        productTitle: "접이식 놀이매트 크림베이지 2종",
        originPrice: 7630,
        discountRate: 20,
        discountedPrice: 6090),
    ProductDTO(
        backgroundImage: "assets/images/product03.jpg",
        sellerName: "농심",
        productTitle: "농심라면 5종 세트",
        originPrice: 6000,
        discountRate: 20,
        discountedPrice: 5000),
    ProductDTO(
        backgroundImage: "assets/images/product04.jpg",
        sellerName: "오리온",
        productTitle: "과자 10종 세트",
        originPrice: 20000,
        discountRate: 10,
        discountedPrice: 18000)
  ];
}
