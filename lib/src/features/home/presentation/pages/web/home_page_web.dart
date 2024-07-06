import 'package:ava_airline/src/features/home/home.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
      width: double.infinity,
      height: height * 0.4,
      child: Stack(
        children: [
          Image.asset(ImageManager.homePageImage,fit: BoxFit.cover,),
          const NavbarComponent(),
        ],
      ),
      ),
    );
  }
}
