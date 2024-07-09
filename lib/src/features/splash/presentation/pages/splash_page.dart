import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/features.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const splashPageName = 'splash-page';
  static const splashPagePath = '/splash-page';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    splashFunction();
    super.initState();
  }

  Future splashFunction() async{
    await Future.delayed(const Duration(seconds: 2));
    context.go(HomePage.homePagePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset('assets/image/ava.png'),
        )
      ),
    );
  }
}
