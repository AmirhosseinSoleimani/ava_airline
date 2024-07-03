import 'package:ava_airline/src/features/header/presentation/pages/header_page.dart';
import 'package:ava_airline/src/shared/resources/assets_manager.dart';
import 'package:flutter/material.dart';

class HeaderHomePageWidget extends StatelessWidget {
  const HeaderHomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: height * 0.4,
      child: Stack(
        children: [
          Image.asset(ImageManager.homePageImage,fit: BoxFit.cover,),
          HeaderPage()
        ],
      ),
    );
  }
}
