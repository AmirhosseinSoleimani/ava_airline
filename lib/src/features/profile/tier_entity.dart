import 'package:flutter/material.dart';

class Tier {
  final String path;
  final String? name;
  final int minMile;
  final Color? color;
  final List<String>? benefits;

  Tier({required this.path, this.name, required this.minMile, this.color,this.benefits});
}
