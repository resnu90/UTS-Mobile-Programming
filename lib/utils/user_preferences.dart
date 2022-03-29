
import 'package:flutter/material.dart';
import 'package:flutter_uts/models/user.dart';


class UserPreferences {
  static const myUser = User(
    imagePath: 'asset/images/face.jpg',
    name: 'Golden Retriever',
    email: 'Golden.Retriever@pet.undog.id',
    about:
    'imma British breed of retriever dog of medium size. It is characterised by a gentle and affectionate nature and a striking golden coat. It is commonly kept as a pet and is among the most frequently registered breeds in several Western countries.',
    isDarkMode: false,
  );
}