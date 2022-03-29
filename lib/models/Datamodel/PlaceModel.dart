import 'package:flutter/material.dart';

class PlaceModel {
  String title, details;
  int rent;
  String imagePath;
  List<String> photoCollections = [
    "asset/images/image1.jpg",
    "asset/images/image2.jpg",
    "asset/images/image3.jpg",
    "asset/images/image4.jpg",
    "asset/images/image5.jpg",
    "asset/images/image6.jpg",
    "asset/images/image7.jpg",
    "asset/images/image8.jpg",
    "asset/images/image9.jpg",
  ];
  PlaceModel({
    this.title,
    this.details,
    this.rent,
    this.imagePath,
  });
}

List<PlaceModel> placeCollection = [
  PlaceModel(
    title: "Rumah mewah BSD",
    details: "BSD City",
    rent: 500,
    imagePath: "asset/images/image1.jpg",
  ),
  PlaceModel(
    title: "Penthouse mas Aris",
    details: "Penthouse untuk mba lidya",
    rent: 400,
    imagePath: "asset/images/image4.jpg",
  ),
  PlaceModel(
    title: "Rumah Minimalis",
    details: "minimalism is the new lifestyle",
    rent: 800,
    imagePath: "asset/images/image5.jpg",
  ),
  PlaceModel(
    title: "Rumah jadul",
    details: "Untuk kamu kaum kere hore",
    rent: 200,
    imagePath: "asset/images/image7.jpg",
  ),
];