import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/app/my_app.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/flight_selection/flight_selection_page.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
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
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  final GlobalKey _textFieldKey = GlobalKey();
  late final RenderBox renderBox;

  void _showOverlay() {
    final localization = S.of(context);
    final RenderBox renderBox = _textFieldKey.currentContext!.findRenderObject() as RenderBox;
    final Size size = renderBox.size;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    _overlayEntry =  OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () {
          _removeOverlay();
        },
        behavior: HitTestBehavior.translucent,
        child: StatefulBuilder(
            builder: (context, updateState) {
              return Stack(
                children: [
                  Positioned(
                    width: size.width,
                    child: CompositedTransformFollower(
                      link: _layerLink,
                      showWhenUnlinked: false,
                      offset: Offset(0, size.height),
                      child: Material(
                        elevation: 4.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Space.h8,

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(localization.adult, style: Theme.of(context).textTheme.titleMedium),
                                      Text(
                                        localization.adultsDescription,
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700], fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.remove, size: AppSize.s24, color: Colors.red,),
                                        onPressed: () {
                                          updateState(() {});
                                          setState(() {
                                            if (adults > 1) adults--;
                                          });
                                          _updateTextField();
                                        },
                                      ),
                                      Text(adults.toString(), style: Theme.of(context).textTheme.bodyMedium),
                                      IconButton(
                                        icon: const Icon(Icons.add, size: AppSize.s24, color: Colors.green,),
                                        onPressed: () {
                                          setState(() {
                                            adults++;
                                          });
                                          updateState(() {});
                                          _updateTextField();
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Space.h8,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(localization.children, style: Theme.of(context).textTheme.titleMedium),
                                      Text(
                                        localization.childrenDescription,
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700], fontSize: 10),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.remove, size: AppSize.s24, color: Colors.red,),
                                        onPressed: () {
                                          setState(() {
                                            if (children > 0) children--;
                                          });
                                          updateState(() {});
                                          _updateTextField();
                                        },
                                      ),
                                      Text(children.toString(), style: Theme.of(context).textTheme.bodyMedium),
                                      IconButton(
                                        icon: const Icon(Icons.add, size: AppSize.s24, color: Colors.green,),
                                        onPressed: () {
                                          setState(() {
                                            children++;
                                          });
                                          updateState(() {});
                                          _updateTextField();
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Space.h8,

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(localization.infant, style: Theme.of(context).textTheme.titleMedium),
                                      Text(
                                        localization.infantDescription,
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700], fontSize: 10),
                                        ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.remove, size: AppSize.s24, color: Colors.red,),
                                        onPressed: () {
                                          setState(() {
                                            if (infants > 0) infants--;
                                          });
                                          updateState(() {});
                                          _updateTextField();
                                        },
                                      ),
                                      Text(infants.toString(), style: Theme.of(context).textTheme.bodyMedium),
                                      IconButton(
                                        icon: const Icon(Icons.add, size: AppSize.s24, color: Colors.green,),
                                        onPressed: () {
                                          setState(() {
                                            if(infants < adults) {
                                              infants++;
                                            }
                                          });
                                          updateState(() {});
                                          _updateTextField();
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Space.h8
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
        ),
      ),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }


  void _updateTextField() {
    final localization = S.of(context);
    int totalPassengers = adults + children + infants;
    passengerController.text = localization.passengersCount(totalPassengers);
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
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
          _removeOverlay();
      },
      child: Container(
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
                  _buildTab(IconManager.airplane, localization.buyTicket, context),
                  _buildTab(IconManager.seat, localization.online_check_in, context),
                  _buildTab(IconManager.travel, localization.myTrips, context),
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
                          _buildRadioButton(0, localization.oneWay),
                          Space.w12,
                          _buildRadioButton(1, localization.roundTrip),
                          Space.w12,
                          _buildRadioButton(2, localization.multiCity),
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
                      Text(localization.onlineCheckIn, style: Theme.of(context).textTheme.bodyMedium,),
                      Space.h16,
                      Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                    labelText: localization.reservationOrTicketNumber,
                                  )
                          )),
                          Space.w12,
                          Expanded(
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                    labelText: localization.flightNumber,
                                  )
                              )),
                          Space.w12,
                          Expanded(child: AvaElevatedButton(
                            onTap: () {},
                            title: localization.search,
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
                      Text(localization.registerToViewTrips, style: Theme.of(context).textTheme.bodyMedium,),
                      Space.h16,
                      Row(
                        children: [
                          Expanded(
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                    labelText: localization.reservationNumber,
                                  )
                              )),
                          Space.w12,
                          Expanded(
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                    const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                                    border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
                                    labelText: localization.passengerLastName,
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
                                      localization.flightDate,
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
                            title: localization.search,
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
      ),
    );
  }

  Widget _buildSelectedWidget() {
    final localization = S.of(context);
    final locale = Localizations.localeOf(context).languageCode;
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
                                localization.origin, originController, locale.contains('en') ? false : true),
                          ),
                          Expanded(
                            child: _buildCityTextField(
                                localization.destination, destinationController, locale.contains('en') ? true : false),
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
                            localization.flightDate,
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
                  CompositedTransformTarget(
                    link: _layerLink,
                    child: TextFormField(
                      key: _textFieldKey,
                      onTap: () {
                        if (_overlayEntry == null) {
                          _showOverlay();
                        } else {
                          _removeOverlay();
                          _overlayEntry = null;
                        }
                      },
                        readOnly: true,
                        controller: passengerController,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: AppPadding.p24),
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(AppSize.s8))),
                            hintText: localization.hintTextPassenger,
                            prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,),
                        )),
                  ),
                ),
                Space.w8,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppPadding.p12),
                    child: AvaElevatedButton(
                      onTap: () {
                        context.go(FlightSelectionPage.flightSelectionPagePath);
                      },
                      title: localization.search,
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
                                localization.origin, originController, locale.contains('en') ? false : true),
                          ),
                          Expanded(
                            child: _buildCityTextField(
                                localization.destination, destinationController, locale.contains('en') ? true : false),
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
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.only(
                                    topRight: Radius.circular(locale.contains('en') ? AppSize.s0 : AppSize.s8),
                                    bottomRight: Radius.circular(locale.contains('en') ? AppSize.s0 : AppSize.s8),
                                    topLeft: Radius.circular(locale.contains('en') ? AppSize.s8 : AppSize.s0),
                                    bottomLeft: Radius.circular(locale.contains('en') ? AppSize.s8 : AppSize.s0)
                                  ),
                                ),
                                label: Text(
                                  localization.departureDate,
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
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.only(
                                      topLeft: Radius.circular(locale.contains('en') ? AppSize.s0 : AppSize.s8),
                                      bottomLeft: Radius.circular(locale.contains('en') ? AppSize.s0 : AppSize.s8),
                                      topRight: Radius.circular(locale.contains('en') ? AppSize.s8 : AppSize.s0),
                                      bottomRight: Radius.circular(locale.contains('en') ? AppSize.s8 : AppSize.s0),
                                  ),
                                ),
                                label: Text(
                                  localization.returnDate,
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
                  CompositedTransformTarget(
                    link: _layerLink,
                    child: TextFormField(
                        key: _textFieldKey,
                        onTap: () {
                          if (_overlayEntry == null) {
                            _showOverlay();
                          } else {
                            _removeOverlay();
                            _overlayEntry = null;
                          }
                        },
                        readOnly: true,
                        controller: passengerController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p24),
                          border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(AppSize.s8))),
                          hintText: localization.hintTextPassenger,
                          prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,),
                        )),
                  ),
                ),
                Space.w8,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: AppPadding.p12),
                    child: AvaElevatedButton(
                      onTap: () {},
                      title: localization.search,
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
                                    localization.origin, originController, locale.contains('en') ? false : true),
                              ),
                              Expanded(
                                child: _buildCityTextField(
                                    localization.destination, destinationController, locale.contains('en') ? true : false),
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
                                localization.flightDate,
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
                                    localization.origin, originController, locale.contains('en') ? false : true),
                              ),
                              Expanded(
                                child: _buildCityTextField(
                                    localization.destination, destinationController, locale.contains('en') ? true : false),
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
                                localization.flightDate,
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
                      child: CompositedTransformTarget(
                        link: _layerLink,
                        child: TextFormField(
                            key: _textFieldKey,
                            onTap: () {
                              if (_overlayEntry == null) {
                                _showOverlay();
                              } else {
                                _removeOverlay();
                                _overlayEntry = null;
                              }
                            },
                            readOnly: true,
                            controller: passengerController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p24),
                              border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(AppSize.s8))),
                              hintText: localization.hintTextPassenger,
                              prefixIcon: Icon(IconManager.people, size: AppSize.s24, color: Theme.of(context).colorScheme.secondary,),
                            )),
                      ),
                    ),
                    Space.w8,
                    AvaElevatedButton(
                      onTap: () {},
                      title: localization.search,
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
