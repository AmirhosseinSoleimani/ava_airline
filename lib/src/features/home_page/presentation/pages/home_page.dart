import 'package:ava_airline/src/features/header/header.dart';
import 'package:ava_airline/src/features/header/presentation/pages/header_page.dart';
import 'package:ava_airline/src/features/home_page/presentation/pages/widgets/header_home_page/header_home_page_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderHomePageWidget()
        ],
      ),
    );
  }
}
