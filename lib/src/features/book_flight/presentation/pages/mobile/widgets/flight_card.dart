import 'package:flutter/material.dart';

import 'package:ava_airline/generated/l10n.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import '../../../../../../shared/resources/resources.dart';

enum Class { economy, premium, business, first }

class FlightCard extends StatefulWidget {
  final bool isSingle;

  const FlightCard({required this.isSingle, super.key});

  @override
  State<FlightCard> createState() => _FlightCardState();
}

class _FlightCardState extends State<FlightCard> {
  String? selectOrigin;
  String? selectDestination;
  String? flightDate;

  int adultCount = 1;
  int childrenCount = 0;
  int infantCount = 0;

  Class selectedClass = Class.economy;

  String? passengerStatus;

  @override
  Widget build(BuildContext context) {
    final localization = S.current;
    final cities = [
      S.current.tehran,
      S.current.mashhad,
      S.current.ahvaz,
      S.current.isfahan,
      S.current.shiraz,
    ];
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12)),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        child: InkWell(
                          borderRadius: BorderRadius.only(
                            topRight: AppConstants.language == 'en'
                                ? Radius.zero
                                : const Radius.circular(12),
                            topLeft: AppConstants.language == 'en'
                                ? const Radius.circular(12)
                                : Radius.zero,
                          ),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) =>
                                  _buildCityModal(context, true, cities),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(localization.from),
                                  const SizedBox(height: 8),
                                  Text(
                                    selectOrigin ?? localization.selectOrigin,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey[700]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.grey[500],
                      width: 0,
                      thickness: 0.5,
                    ),
                    Expanded(
                      child: Material(
                        borderRadius: BorderRadius.circular(100),
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        child: InkWell(
                          borderRadius: BorderRadius.only(
                            topRight: AppConstants.language == 'en'
                                ? const Radius.circular(12)
                                : Radius.zero,
                            topLeft: AppConstants.language == 'en'
                                ? Radius.zero
                                : const Radius.circular(12),
                          ),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) =>
                                  _buildCityModal(context, false, cities),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey.shade300),
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(localization.to),
                                  const SizedBox(height: 8),
                                  Text(
                                    selectDestination ??
                                        localization.selectDestination,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.grey[700]),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        String? temp = selectOrigin;
                        selectOrigin = selectDestination;
                        selectDestination = temp;

                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.compare_arrows_rounded,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Material(
                color: Theme.of(context).colorScheme.surfaceContainer,
                child: InkWell(
                                onTap: _pickDate,
                                child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          widget.isSingle
                              ? localization.travelDate
                              : localization.travelDates,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          flightDate ??
                              (widget.isSingle
                                  ? localization.selectDate
                                  : localization.selectDates),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ],
                ),
                                ),
                              ),
              )),
          Expanded(
            child: Material(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(12)),
              child: InkWell(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(12)),
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => StatefulBuilder(
                            builder: (context, updateState) =>
                                _buildPassengerModal(context, updateState),
                          ),
                      isScrollControlled: true);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(12)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(localization.passengerAndCabinClass),
                      const SizedBox(height: 16),
                      Text(
                        passengerStatus ?? localization.adultEconomyClass1,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCityModal(
      BuildContext context, bool isFrom, List<String> cities) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: cities
            .map(
              (e) => ListTile(
                title: Text(
                  e,
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  setState(() {
                    if (isFrom) {
                      selectOrigin = e;
                    } else {
                      selectDestination = e;
                    }
                    Navigator.pop(context);
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }

  void _pickDate() async {
    if (widget.isSingle) {
      Jalali? picked = await showPersianDatePicker(
        context: context,
        initialDate: Jalali.now(),
        firstDate: Jalali.now(),
        lastDate: Jalali(1450, 9),
      );
      if (picked != null) {
        setState(() {
          flightDate = picked.formatFullDate();
        });
      }
    } else {
      JalaliRange? picked = await showPersianDateRangePicker(
        context: context,
        firstDate: Jalali.now(),
        lastDate: Jalali(1450, 9),
      );
      if (picked != null) {
        setState(() {
          flightDate =
              '${picked.start.formatFullDate()} ${S.of(context).toCalender} ${picked.end.formatFullDate()}';
        });
      }
    }
  }

  Widget _buildPassengerModal(BuildContext context, updateState) {
    final localization = S.of(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localization.passengers,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.red.shade800,
                    ))
              ],
            ),
            const SizedBox(height: 16),
            _buildCountRow(
              localization.adults,
              localization.adultsDescription,
              adultCount,
              () {
                if (adultCount > 1) {
                  if (infantCount == adultCount) infantCount--;
                  adultCount--;

                  updateState(() {});
                }
              },
              () {
                if (adultCount < 9) {
                  adultCount++;
                  updateState(() {});
                }
              },
            ),
            _buildCountRow(
              localization.children,
              localization.childrenDescription,
              childrenCount,
              () {
                if (childrenCount > 0) {
                  childrenCount--;
                  updateState(() {});
                }
              },
              () {
                if (childrenCount < 9) {
                  childrenCount++;
                  updateState(() {});
                }
              },
            ),
            _buildCountRow(
              localization.infant,
              localization.infantDescription,
              infantCount,
              () {
                if (infantCount > 0) {
                  infantCount--;
                  updateState(() {});
                }
              },
              () {
                if (infantCount < adultCount) {
                  infantCount++;
                  updateState(() {});
                }
              },
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text(
              localization.clas,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(localization.economyClass),
              leading: Radio<Class>(
                value: Class.economy,
                groupValue: selectedClass,
                onChanged: (value) {
                  updateState(() {
                    selectedClass = value ?? Class.economy;
                  });
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(localization.premiumEconomy),
              leading: Radio<Class>(
                value: Class.premium,
                groupValue: selectedClass,
                onChanged: (value) {
                  updateState(() {
                    selectedClass = value ?? Class.economy;
                  });
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(localization.businessClass),
              leading: Radio<Class>(
                value: Class.business,
                groupValue: selectedClass,
                onChanged: (value) {
                  updateState(() {
                    selectedClass = value ?? Class.economy;
                  });
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(localization.firstClass),
              leading: Radio<Class>(
                value: Class.first,
                groupValue: selectedClass,
                onChanged: (value) {
                  updateState(() {
                    selectedClass = value ?? Class.economy;
                  });
                },
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                          Theme.of(context).colorScheme.primary)),
                  child: Text(
                    localization.confirm,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {
                    updatePassengerStatus(context);
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCountRow(String title, String desc, int count,
      void Function()? reduceFunction, void Function()? addFunction) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme.titleLarge,
              ),
              Text(
                desc,
                style: textTheme.bodyLarge!.copyWith(color: Colors.grey[700]),
              ),
            ],
          ),
          Row(
            children: [
              ClipOval(
                child: Material(
                  color: Theme.of(context).colorScheme.secondary,
                  child: InkWell(
                    splashColor: Theme.of(context).colorScheme.primary,
                    onTap: reduceFunction,
                    child: const SizedBox(
                        width: 32,
                        height: 32,
                        child: Icon(
                          IconManager.minus,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  count.toString(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              ClipOval(
                child: Material(
                  color: Theme.of(context).colorScheme.secondary,
                  child: InkWell(
                    splashColor: Theme.of(context).colorScheme.primary,
                    onTap: addFunction,
                    child: const SizedBox(
                        width: 32,
                        height: 32,
                        child: Icon(
                          IconManager.add,
                          color: Colors.white,
                        )),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  updatePassengerStatus(BuildContext context) {
    int totalCount = adultCount + infantCount + childrenCount;
    passengerStatus =
        '$totalCount ${S.of(context).passenger} ${S.of(context).inn} ${switch (selectedClass) {
      Class.economy => S.of(context).economyClass,
      Class.premium => S.of(context).premiumEconomy,
      Class.business => S.of(context).businessClass,
      Class.first => S.of(context).firstClass,
    }}';
    setState(() {});
  }
}
