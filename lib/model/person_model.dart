import 'package:flutter/material.dart';

class PersonModel {
  final int id;
  final String name;
  final double money;
  final String image;
  final Color color;

  PersonModel({
    required this.id,
    required this.name,
    required this.money,
    required this.image,
    required this.color,
  });
}
