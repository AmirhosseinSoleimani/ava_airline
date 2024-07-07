import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/features.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class BookFlightPageWeb extends StatefulWidget {
  const BookFlightPageWeb({super.key});

  @override
  State<BookFlightPageWeb> createState() => _BookFlightPageWebState();
}

class _BookFlightPageWebState extends State<BookFlightPageWeb>
    with SingleTickerProviderStateMixin {
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
  final TextEditingController myTripDateController = TextEditingController();
  final TextEditingController reverseDateController = TextEditingController();
  final TextEditingController passengerController = TextEditingController();
  final TextEditingController searchController = TextEditingController();
  int adults = 1;
  int children = 0;
  int infants = 0;


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
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.6,
      height: AppSize.s320,
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
            child: TabBarView(controller: tabController, children: [
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
                        duration:
                            const Duration(milliseconds: DurationConstant.d500),
                        child: _buildSelectedWidget(),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('پذیرش آنلاین (24 ساعت قبل از پرواز)', style: Theme.of(context).textTheme.bodyMedium,),
                    Space.h16,
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                  labelText: 'شماره رزرو یا شماره بلیط',
                                )
                        )),
                        Space.w12,
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                  labelText: 'شماره پرواز',
                                )
                            )),
                        Space.w12,
                        Expanded(child: AvaElevatedButton(
                          onTap: () {},
                          title: 'جستجو',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('لطفا جهت مشاهده سفرهای پیش رو ابتدا ثبت نام کنید.', style: Theme.of(context).textTheme.bodyMedium,),
                    Space.h16,
                    Row(
                      children: [
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                  labelText: 'شماره رزرو',
                                )
                            )),
                        Space.w12,
                        Expanded(
                            child: TextFormField(
                                decoration: const InputDecoration(
                                  contentPadding:
                                  EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                  labelText: 'نام خانوادگی مسافر',
                                )
                            )),
                        Space.w12,
                        Expanded(
                            child: TextFormField(
                              readOnly: true,
                              onTap: () async {
                                Jalali? picked = await showPersianDatePicker(
                                  context: context,
                                  initialDate: Jalali.now(),
                                  firstDate: Jalali.now(),
                                  lastDate: Jalali(1450, 9),
                                );

                                myTripDateController.text = picked!.formatFullDate();
                              },
                              controller: myTripDateController,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(AppSize.s8)),
                                  ),
                                  label: Text(
                                    'تاریخ پرواز',
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  prefixIcon: Icon(
                                    IconManager.date,
                                    size: AppSize.s28,
                                    color: Theme.of(context).colorScheme.secondary,
                                  )),
                            ),),
                        Space.w12,
                        Expanded(child: AvaElevatedButton(
                          onTap: () {},
                          title: 'جستجو',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                        ),
                        )
                      ],
                    )
                  ],
                ),
              ),
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
                            child: _buildCityTextField(
                                'مبدا', originController, true),
                          ),
                          Expanded(
                            child: _buildCityTextField(
                                'مقصد', destinationController, false),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(bottom: AppPadding.p12),
                          child: InkWell(
                            onTap: () {
                              String temp = originController.text;
                              originController.text =
                                  destinationController.text;
                              destinationController.text = temp;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s60),
                                  border: Border.all(
                                      width: AppSize.s1,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                    child: TextFormField(
                      readOnly: true,
                      onTap: () async {
                        Jalali? picked = await showPersianDatePicker(
                          context: context,
                          initialDate: Jalali.now(),
                          firstDate: Jalali.now(),
                          lastDate: Jalali(1450, 9),
                        );

                        dateController.text = picked!.formatFullDate();
                      },
                      controller: dateController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(AppSize.s8)),
                          ),
                          label: Text(
                            'تاریخ پرواز',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          prefixIcon: Icon(
                            IconManager.date,
                            size: AppSize.s28,
                            color: Theme.of(context).colorScheme.secondary,
                          )),
                    ),
                  ),
                ),
                Space.w8,
                Expanded(
                  flex: 2,
                  child:
                  TextFormField(
                      controller: passengerController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p24),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(AppSize.s8))),
                          hintText: '1 مسافر',
                          prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if(adults > 1) {
                                    adults--;
                                    setState(() {});
                                    passengerController.text =
                                    'مسافران $adults';
                                  }
                                },
                                child: const Icon(IconManager.minus, size: AppSize.s24, color: Colors.red,),
                              ),
                              InkWell(
                                onTap: () {
                                  adults++;
                                  setState(() {});
                                  passengerController.text = 'مسافران $adults';
                                },
                                child: const Icon(IconManager.add, size: AppSize.s24, color: Colors.green,),
                              )
                            ],
                          )
                      )),
                  // TypeAheadField<String>(
                  //   controller: passengerController,
                  //   builder: (context, controller, focusNode) {
                  //     return TextFormField(
                  //         controller: controller,
                  //         focusNode: focusNode,
                  //         decoration: InputDecoration(
                  //           contentPadding: const EdgeInsets.symmetric(
                  //               horizontal: AppPadding.p24),
                  //           border: const OutlineInputBorder(
                  //               borderRadius: BorderRadius.all(
                  //                   Radius.circular(AppSize.s8))),
                  //           hintText: '1 مسافر',
                  //           prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,)
                  //         ));
                  //   },
                  //   itemBuilder: (BuildContext context, String value) {
                  //     return Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                  //       child: Row(
                  //         children: [
                  //           Text(value),
                  //           const Spacer(),
                  //           InkWell(
                  //               onTap: () {
                  //                 int sum = adults + children + infants;
                  //                 adults++;
                  //                 setState(() {});
                  //                 passengerController.text = '$sumمسافران';
                  //               },
                  //               child: const Icon(IconManager.add, size: AppSize.s24, color: Colors.green,),
                  //           ),
                  //           Space.w12,
                  //           Text('$adults', style: Theme.of(context).textTheme.bodyMedium,),
                  //           Space.w12,
                  //           InkWell(
                  //               onTap: () {
                  //                 int sum = adults + children + infants;
                  //                 if(adults > 1) {
                  //                   adults--;
                  //                   setState(() {});
                  //                   passengerController.text = '$sumمسافران';
                  //                 }
                  //               },
                  //               child: const Icon(IconManager.minus, size: AppSize.s24, color: Colors.red,))
                  //         ],
                  //       ),
                  //     );
                  //   },
                  //   onSelected: (String value) {
                  //   },
                  //   suggestionsCallback: (String search) {
                  //     return ['بزرگسال', 'خردسال', 'نوزاد'].where((city) => city.contains(search)).toList();
                  //   },
                  // ),
                ),
                Space.w8,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppPadding.p12),
                    child: AvaElevatedButton(
                      onTap: () {},
                      title: 'جستجو',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      case 1:
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
                            child: _buildCityTextField(
                                'مبدا', originController, true),
                          ),
                          Expanded(
                            child: _buildCityTextField(
                                'مقصد', destinationController, false),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding:
                          const EdgeInsets.only(bottom: AppPadding.p12),
                          child: InkWell(
                            onTap: () {
                              String temp = originController.text;
                              originController.text =
                                  destinationController.text;
                              destinationController.text = temp;
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                  Theme.of(context).colorScheme.onSecondary,
                                  borderRadius:
                                  BorderRadius.circular(AppSize.s60),
                                  border: Border.all(
                                      width: AppSize.s1,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary)),
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
                    padding:
                    const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            readOnly: true,
                            onTap: () async {
                              Jalali? picked = await showPersianDatePicker(
                                context: context,
                                initialDate: Jalali.now(),
                                firstDate: Jalali.now(),
                                lastDate: Jalali(1450, 9),
                              );

                              dateController.text = picked?.formatFullDate() ?? '';
                            },
                            controller: dateController,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.only(
                                    topRight: Radius.circular(AppSize.s8),
                                    bottomRight: Radius.circular(AppSize.s8)
                                  ),
                                ),
                                label: Text(
                                  'تاریخ رفت',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                prefixIcon: Icon(
                                  IconManager.date,
                                  size: AppSize.s28,
                                  color: Theme.of(context).colorScheme.secondary,
                                )),
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            readOnly: true,
                            onTap: () async {
                              Jalali? picked = await showPersianDatePicker(
                                context: context,
                                initialDate: Jalali.now(),
                                firstDate: Jalali.now(),
                                lastDate: Jalali(1450, 9),
                              );

                              reverseDateController.text = picked?.formatFullDate() ?? '';
                            },
                            controller: dateController,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.only(
                                      topLeft: Radius.circular(AppSize.s8),
                                      bottomLeft: Radius.circular(AppSize.s8)
                                  ),
                                ),
                                label: Text(
                                  'تاریخ برگشت',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                prefixIcon: Icon(
                                  IconManager.date,
                                  size: AppSize.s28,
                                  color: Theme.of(context).colorScheme.secondary,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Space.w8,
                Expanded(
                  flex: 2,
                  child:
                  TextFormField(
                      controller: passengerController,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p24),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(AppSize.s8))),
                          hintText: '1 مسافر',
                          prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if(adults > 1) {
                                    adults--;
                                    setState(() {});
                                    passengerController.text =
                                    'مسافران $adults';
                                  }
                                },
                                child: const Icon(IconManager.minus, size: AppSize.s24, color: Colors.red,),
                              ),
                              InkWell(
                                onTap: () {
                                  adults++;
                                  setState(() {});
                                  passengerController.text = 'مسافران $adults';
                                },
                                child: const Icon(IconManager.add, size: AppSize.s24, color: Colors.green,),
                              )
                            ],
                          )
                      )),
                  // TypeAheadField<String>(
                  //   controller: passengerController,
                  //   builder: (context, controller, focusNode) {
                  //     return TextFormField(
                  //         controller: controller,
                  //         focusNode: focusNode,
                  //         decoration: InputDecoration(
                  //           contentPadding: const EdgeInsets.symmetric(
                  //               horizontal: AppPadding.p24),
                  //           border: const OutlineInputBorder(
                  //               borderRadius: BorderRadius.all(
                  //                   Radius.circular(AppSize.s8))),
                  //           hintText: '1 مسافر',
                  //           prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,)
                  //         ));
                  //   },
                  //   itemBuilder: (BuildContext context, String value) {
                  //     return Padding(
                  //       padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                  //       child: Row(
                  //         children: [
                  //           Text(value),
                  //           const Spacer(),
                  //           InkWell(
                  //               onTap: () {
                  //                 int sum = adults + children + infants;
                  //                 adults++;
                  //                 setState(() {});
                  //                 passengerController.text = '$sumمسافران';
                  //               },
                  //               child: const Icon(IconManager.add, size: AppSize.s24, color: Colors.green,),
                  //           ),
                  //           Space.w12,
                  //           Text('$adults', style: Theme.of(context).textTheme.bodyMedium,),
                  //           Space.w12,
                  //           InkWell(
                  //               onTap: () {
                  //                 int sum = adults + children + infants;
                  //                 if(adults > 1) {
                  //                   adults--;
                  //                   setState(() {});
                  //                   passengerController.text = '$sumمسافران';
                  //                 }
                  //               },
                  //               child: const Icon(IconManager.minus, size: AppSize.s24, color: Colors.red,))
                  //         ],
                  //       ),
                  //     );
                  //   },
                  //   onSelected: (String value) {
                  //   },
                  //   suggestionsCallback: (String search) {
                  //     return ['بزرگسال', 'خردسال', 'نوزاد'].where((city) => city.contains(search)).toList();
                  //   },
                  // ),
                ),
                Space.w8,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppPadding.p12),
                    child: AvaElevatedButton(
                      onTap: () {},
                      title: 'جستجو',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      case 2:
        return Column(
          children: [
            SizedBox(
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
                                child: _buildCityTextField(
                                    'مبدا', originController, true),
                              ),
                              Expanded(
                                child: _buildCityTextField(
                                    'مقصد', destinationController, false),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: AppPadding.p12),
                              child: InkWell(
                                onTap: () {
                                  String temp = originController.text;
                                  originController.text =
                                      destinationController.text;
                                  destinationController.text = temp;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:
                                      Theme.of(context).colorScheme.onSecondary,
                                      borderRadius:
                                      BorderRadius.circular(AppSize.s60),
                                      border: Border.all(
                                          width: AppSize.s1,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary)),
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
                        padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                        child: TextFormField(
                          readOnly: true,
                          onTap: () async {
                            Jalali? picked = await showPersianDatePicker(
                              context: context,
                              initialDate: Jalali.now(),
                              firstDate: Jalali.now(),
                              lastDate: Jalali(1450, 9),
                            );

                            dateController.text = picked!.formatFullDate();
                          },
                          controller: dateController,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(AppSize.s8)),
                              ),
                              label: Text(
                                'تاریخ پرواز',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              prefixIcon: Icon(
                                IconManager.date,
                                size: AppSize.s28,
                                color: Theme.of(context).colorScheme.secondary,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
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
                                child: _buildCityTextField(
                                    'مبدا', originController, true),
                              ),
                              Expanded(
                                child: _buildCityTextField(
                                    'مقصد', destinationController, false),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(bottom: AppPadding.p12),
                              child: InkWell(
                                onTap: () {
                                  String temp = originController.text;
                                  originController.text =
                                      destinationController.text;
                                  destinationController.text = temp;
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color:
                                      Theme.of(context).colorScheme.onSecondary,
                                      borderRadius:
                                      BorderRadius.circular(AppSize.s60),
                                      border: Border.all(
                                          width: AppSize.s1,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary)),
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
                        padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                        child: TextFormField(
                          readOnly: true,
                          onTap: () async {
                            Jalali? picked = await showPersianDatePicker(
                              context: context,
                              initialDate: Jalali.now(),
                              firstDate: Jalali.now(),
                              lastDate: Jalali(1450, 9),
                            );

                            dateController.text = picked!.formatFullDate();
                          },
                          controller: dateController,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(AppSize.s8)),
                              ),
                              label: Text(
                                'تاریخ پرواز',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              prefixIcon: Icon(
                                IconManager.date,
                                size: AppSize.s28,
                                color: Theme.of(context).colorScheme.secondary,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 230,
                      child: TextFormField(
                          controller: passengerController,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p24),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(AppSize.s8))),
                              hintText: '1 مسافر',
                              prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if(adults > 1) {
                                        adults--;
                                        setState(() {});
                                        passengerController.text =
                                        'مسافران $adults';
                                      }
                                    },
                                    child: const Icon(IconManager.minus, size: AppSize.s24, color: Colors.red,),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      adults++;
                                      setState(() {});
                                      passengerController.text = 'مسافران $adults';
                                    },
                                    child: const Icon(IconManager.add, size: AppSize.s24, color: Colors.green,),
                                  )
                                ],
                              )
                          )),
                    ),
                    Space.w8,
                    AvaElevatedButton(
                      onTap: () {},
                      title: 'جستجو',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      default:
        return Container();
    }
  }

  Widget _buildCityTextField(
      String label, TextEditingController controller, bool? isRight) {
    return TypeAheadField<String>(
      controller: controller,
      builder: (context, controller, focusNode) {
        return TextFormField(
            controller: controller,
            focusNode: focusNode,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                    (isRight ?? false) ? AppSize.s0 : AppSize.s8),
                topLeft: Radius.circular(
                    (isRight ?? false) ? AppSize.s0 : AppSize.s8),
                bottomRight: Radius.circular(
                    (isRight ?? false) ? AppSize.s8 : AppSize.s0),
                topRight: Radius.circular(
                    (isRight ?? false) ? AppSize.s8 : AppSize.s0),
              )),
              labelText: label,
            ));
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
        Icon(
          icon,
          color: Theme.of(context).colorScheme.secondary,
          size: AppSize.s24,
        ),
        Space.w8,
        Text(text, style: Theme.of(context).textTheme.titleMedium),
      ],
    ),
  );
}
