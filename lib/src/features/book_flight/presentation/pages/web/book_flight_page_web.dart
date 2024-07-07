import 'dart:ui';

import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/features.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';


class BookFlightPageWeb extends StatefulWidget {
  const BookFlightPageWeb({super.key});

  @override
  State<BookFlightPageWeb> createState() => _BookFlightPageWebState();
}

class _BookFlightPageWebState extends State<BookFlightPageWeb> with SingleTickerProviderStateMixin{
  late TabController tabController;
  int _selectedValue = 0;
  final List<String> cities = ['تهران', 'مشهد', 'اصفهان', 'شیراز', 'تبریز'];
  String? origin;
  String? destination;
  OverlayEntry? overlayEntry;
  List<String> filteredCities = [];
  final TextEditingController originController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController passengerController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  int adults = 1;
  int children = 0;
  int infants = 0;

  void _updatePassengerController() {
    passengerController.text =
    'بزرگسال: $adults, خردسال: $children, نوزاد: $infants';
  }

  Widget _buildCounter(String label, int count, ValueChanged<int> onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Row(
          children: [
            IconButton(
              onPressed: count > 0 ? () => onChanged(count - 1) : null,
              icon: Icon(Icons.remove),
            ),
            Text('$count'),
            IconButton(
              onPressed: () => onChanged(count + 1),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }

  void swapCities() {
    setState(() {
      final temp = origin;
      print(origin);
      origin = destination;
      print(origin);
      destination = temp;
      print(destination);
      originController.text = origin ?? '';
      destinationController.text = destination ?? '';
    });
  }


  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  Widget _buildRadioButton(int value, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Radio<int>(
          value: value,
          groupValue: _selectedValue,
          onChanged: (int? newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
          },
        ),
        Space.w8,
        Text(text, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.6,
      height: AppSize.s300,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12)),
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: TabBar(
              controller: tabController,
              tabs: [
                _buildTab(IconManager.airplane, 'خرید بلیط', context),
                _buildTab(IconManager.seat, 'پذیرش آنلاین', context),
                _buildTab(IconManager.travel, 'سفرهای من', context),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: TabBarView(
                controller: tabController,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(AppPadding.p12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildRadioButton(0, 'یک طرفه'),
                            Space.w12,
                            _buildRadioButton(1, 'رفت و برگشت'),
                            Space.w12,
                            _buildRadioButton(2, 'چند مسیره'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: DurationConstant.d500),
                            child: _buildSelectedWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                  )
                ]),
          )
        ],
      ),
    );
  }
  Widget _buildSelectedWidget() {
    switch (_selectedValue) {
      case 0:
        return SizedBox(
          height: AppSize.s60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: _buildCityTextField('مبدا', originController, true),
                          ),
                          Expanded(
                            child: _buildCityTextField('مقصد', destinationController, false),)
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: AppPadding.p12),
                          child: InkWell(
                            onTap: () {
                              String temp = originController.text;
                              originController.text = destinationController.text;
                              destinationController.text = temp;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onSecondary,
                                borderRadius: BorderRadius.circular(AppSize.s60),
                                border: Border.all(
                                  width: AppSize.s1,
                                  color: Theme.of(context).colorScheme.secondary
                                )
                              ),
                              child: Icon(
                                IconManager.swap,
                                size: AppSize.s24,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Space.w8,
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                    child: TextFormField(
                      controller: dateController,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)),
                        ),
                        label: Text(
                          'تاریخ پرواز',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        prefixIcon: Icon(IconManager.date, size: AppSize.s28, color: Theme.of(context).colorScheme.secondary,)
                      ),
                    ),
                  ),
                ),
                Space.w8,
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      TypeAheadField(
                        builder: (context, controller, focusNode) {
                        return TextFormField(
                          controller: searchController,
                          decoration: const InputDecoration(
                            labelText: 'انتخاب مسافران',
                            border: OutlineInputBorder(),
                          ),
                        );
                      },
                        suggestionsCallback: (pattern) async {
                          return ['بزرگسال', 'خردسال', 'نوزاد'].where((item) => item.contains(pattern)).toList();
                      },
                      itemBuilder: (context, suggestion) {
                        return ListTile(
                          title: Text(suggestion.toString()),
                        );
                      },
                        onSelected: (suggestion) {
                        if (suggestion == 'بزرگسال') {
                          adults++;
                        } else if (suggestion == 'خردسال') {
                          children++;
                        } else if (suggestion == 'نوزاد') {
                          infants++;
                        }
                        _updatePassengerController();
                      },
                      ),
                    ],
                  ),
                ),
                Space.w8,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppPadding.p12),
                    child: AvaElevatedButton(
                      onTap: () {},
                      title: 'جستجو',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      case 1:
        return Container(
          key: ValueKey<int>(1),
          color: Colors.green,
          width: 100,
          height: 100,
          child: Center(child: Text('Green')),
        );
      case 2:
        return Container(
          key: ValueKey<int>(2),
          color: Colors.blue,
          width: 100,
          height: 100,
          child: Center(child: Text('Blue')),
        );
      default:
        return Container();
    }
  }
  Widget _buildCityTextField(String label, TextEditingController controller, bool? isRight) {
    return TypeAheadField<String>(
      controller: controller,
      builder: (context, controller, focusNode) {
        return TextFormField(
            controller: controller,
            focusNode: focusNode,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular((isRight ?? false) ? AppSize.s0 : AppSize.s8),
                    topLeft: Radius.circular((isRight ?? false) ? AppSize.s0 : AppSize.s8),
                    bottomRight: Radius.circular((isRight ?? false) ? AppSize.s8 : AppSize.s0),
                    topRight: Radius.circular((isRight ?? false) ? AppSize.s8 : AppSize.s0),
                )
              ),
              labelText: label,
            )
        );
      },
      itemBuilder: (BuildContext context, String value) {
        return ListTile(
          title: Text(value),
        );
      },
      onSelected: (String value) {
        controller.text = value;
      },
      suggestionsCallback: (String search) {
        return cities.where((city) => city.contains(search)).toList();
      },
    );
  }
}

Widget _buildTab(IconData icon, String text, BuildContext context) {
  return Tab(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Theme
            .of(context)
            .colorScheme
            .secondary, size: AppSize.s24,),
        Space.w8,
        Text(text, style: Theme
            .of(context)
            .textTheme
            .titleMedium),
      ],
    ),
  );
}
