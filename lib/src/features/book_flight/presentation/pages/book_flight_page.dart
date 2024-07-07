import 'package:ava_airline/src/features/book_flight/book_flight.dart';

class BookFlightPage extends StatelessWidget {
  static const bookPageName = 'book-page';
  static const bookPagePath = '/book-page';
  const BookFlightPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AvaResponsiveWidget(
        smallScreen: BookFlightPageMobile(),
        largeScreen: BookFlightPageWeb(),
    );
  }
}
