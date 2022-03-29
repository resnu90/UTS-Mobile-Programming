import 'package:flutter/material.dart';

class CarModel {
  String title, details;
  int rent;
  String imagePath;
  List<String> photoCollections = [
    "asset/images/imagecar1.jpg",
    "asset/images/imagecar2.jpg",
    "asset/images/imagecar3.jpg",
    "asset/images/imagecar4.jpg",
    "asset/images/imagecar5.jpg",
    "asset/images/imagecar6.jpg",
    "asset/images/imagecar7.jpg",
    "asset/images/imagecar8.jpg",
  ];
  CarModel({
    this.title,
    this.details,
    this.rent,
    this.imagePath,
  });
}

List<CarModel> carCollection = [
  CarModel(
    title: "Bugatti Chiron",
    details: "Exclusive 2 Seated Car special provided for u only !",
    rent: 500,
    imagePath: "asset/images/imagecar1.jpg",
  ),
  CarModel(
    title: "Toyota Supra Mk5",
    details: "The new Toyota GR Supra has been conceived as a sports car in its purest form. Highlight Features. 6 Straight Engine with Twin-scroll Turbocharger.",
    rent: 350,
    imagePath: "asset/images/imagecar2.jpg",
  ),
  CarModel(
    title: "Toyota 86",
    details: "Toyota 86 adalah model fastback coupe dengan tampilan desain menawan khas Toyota.",
    rent: 250,
    imagePath: "asset/images/imagecar3.jpg",
  ),
  CarModel(
    title: "Nissan GTR R34",
    details: "R34 GT-R have covered a quarter of a mile (402 metres) in 12.2 seconds from a standing start time and accelerated",
    rent: 750,
    imagePath: "asset/images/imagecar4.jpg",
  ),
];