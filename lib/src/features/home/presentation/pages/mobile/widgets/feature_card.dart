import 'package:ava_airline/src/features/home/domain/entities/feature_entity.dart';
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final Feature feature;

  const FeatureCard({required this.feature, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      width: MediaQuery.of(context).size.width*0.95 ,
      height: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(9)),
            child: Image.asset(feature.assetPath,
                height: 125,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    feature.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!.copyWith(fontWeight: FontWeight.w500)
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
