import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/special_services/special_services_page.dart';
import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

import '../../../../../../../shared/footer/footer_widget.dart';
import '../../../../../../bottom_navigation_bar/bottom_navigation_bar.dart';
import '../flight_selection/widgets/stepper_widget.dart';


class PassengerInformationPage extends StatefulWidget {
  static const  passengerInformationPageName = 'passenger-information-page';
  static const  passengerInformationPagePath = '/passenger-information-pagee';
  const PassengerInformationPage({super.key});

  @override
  State<PassengerInformationPage> createState() => _PassengerInformationPageState();
}

class _PassengerInformationPageState extends State<PassengerInformationPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String? _selectedGender;
  final List<String> _genderOptions = ['مرد', 'زن', 'غیرمشخص'];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final locale = Localizations.localeOf(context).languageCode;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.onPrimary,
              width: double.infinity,
              height: 80,
              child: (width > 1024) ?
              NavbarComponent(color: Theme.of(context).colorScheme.onSurface,) :
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: Row(
                    mainAxisAlignment: (locale == 'en') ? MainAxisAlignment.start : MainAxisAlignment.end,
                    children: [
                      if (locale == 'en')
                        InkWell(
                          onTap: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          child: Icon(
                            IconManager.density,
                            size: AppSize.s24,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                      SvgPicture.asset(SvgManager.avaAirLineLogoSvg, width: AppSize.s60, height: AppSize.s60,),
                      Space.w16,
                      if (locale != 'en')
                        InkWell(
                          onTap: () {
                            scaffoldKey.currentState?.openDrawer();
                          },
                          child: Icon(
                            IconManager.density,
                            size: AppSize.s24,
                            color: Theme.of(context).colorScheme.onSecondary,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Space.h64,
            SizedBox(
              width: width * 0.6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: StepperWidget(stepperList: [
                  StepperModel(
                      title: 'جستجو', icon: Icons.fact_check_outlined),
                  StepperModel(
                      title: 'انتخاب پرواز', icon: IconManager.airplane),
                  StepperModel(title: 'اطلاعات مسافر', icon: IconManager.people),
                  StepperModel(title: 'خدمات ویژه', icon: Icons.room_service),
                  StepperModel(
                      title: 'تائید و پرداخت', icon: Icons.airplane_ticket),
                ], currentIndex: 2,),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 180,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p12),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('مبدا', style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text('تهران(مهرآباد)', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    Space.w16,
                    Transform.rotate(
                        angle: 180 * 3.1415927 /180,
                        child: Icon(IconManager.airplane, size: AppSize.s16, color: ColorLightThemeManager.grey,)),
                    Container(
                      width: width * 0.1,
                      height: AppSize.s1,
                      color: ColorLightThemeManager.grey,
                    ),
                    Container(
                      width: AppSize.s8,
                      height: AppSize.s8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorLightThemeManager.transparent,
                          border: Border.all(
                              width: AppSize.s1,
                              color: ColorLightThemeManager.grey
                          )
                      ),
                    ),
                    Space.w16,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('قصد', style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text('مشهد(هاشمی نژاد)', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    Space.w24,
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                      child: VerticalDivider(
                        width: AppSize.s1,
                        thickness: AppSize.s1,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Space.w24,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('تاریخ پرواز', style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text('30 مرداد 1403', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    Space.w24,
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                      child: VerticalDivider(
                        width: AppSize.s1,
                        thickness: AppSize.s1,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Space.w24,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('تعداد مسافر', style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text('1 مسافر', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('مبلغ قابل پرداخت', style: Theme.of(context).textTheme.bodyMedium,),
                        Space.h8,
                        Text('1,365,770 تومان', style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    )

                  ],
                ),
              ),
            ),
            Space.h64,
            Container(
              width: width * 0.6,
              height: 250,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(IconManager.people, size: AppSize.s42, color: Theme.of(context).colorScheme.secondary,),
                        Space.w12,
                        Text('مشخصات مسافران', style: Theme.of(context).textTheme.titleMedium,),
                      ],
                    ),
                    Space.h16,
                    Row(
                      children: [
                        Expanded(
                            child: AvaTextFormField(
                              controller: TextEditingController(),
                              hintText: 'نام لاتین',
                              borderColor: Theme.of(context).colorScheme.secondary,
                            ),
                        ),
                        Space.w12,
                        Expanded(
                            child: AvaTextFormField(
                              controller: TextEditingController(),
                              hintText: 'نام خانوادگی لاتین',
                              borderColor: Theme.of(context).colorScheme.secondary,
                            ),
                        ),
                        Space.w12,
                        Expanded(
                            child: AvaTextFormField(
                              controller: TextEditingController(),
                              hintText: 'کد ملی',
                              borderColor: Theme.of(context).colorScheme.secondary,
                            ),
                        ),
                      ],
                    ),
                    Space.h16,
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: AppSize.s2,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(AppSize.s12))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p6),
                              child: DropdownButton<String>(
                                underline: const SizedBox.shrink(),
                                hint: Text('انتخاب کنید', style: Theme.of(context).textTheme.bodyMedium,),
                                value: _selectedGender,
                                items: _genderOptions.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                setState(() {
                                  _selectedGender = newValue;
                                });
                              },
                                                      ),
                            ),
                          ),),
                        Space.w12,
                        Expanded(child: AvaTextFormField(
                          onTap: () async{
                            Jalali? picked = await showPersianDatePicker(
                              context: context,
                              initialDate: Jalali.now(),
                              firstDate: Jalali(1300,1),
                              lastDate: Jalali.now(),
                            );
                          },
                          suffixIcon: const Icon(IconManager.date),
                          readOnly: true,
                          controller: TextEditingController(),
                          hintText: 'تاریخ تولد',
                          borderColor: Theme.of(context).colorScheme.secondary,
                        ),),
                        Space.w12,
                        Expanded(
                          child: Center(
                            child: AvaElevatedButton(
                              onTap: () {
                                context.go(SpecialServicesPage.specialServicesPagePath);
                              },
                              title: 'ادامه',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Space.h64,
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
