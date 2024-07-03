import 'package:ava_airline/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ACLoading extends StatelessWidget {
  const ACLoading({super.key, this.color, this.size});

  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      color: color ?? Theme.of(context).colorScheme.primary,
      size: size ?? AppSize.s28,
    );
  }
}