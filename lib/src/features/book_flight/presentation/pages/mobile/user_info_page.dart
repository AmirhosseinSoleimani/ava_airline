import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/mobile/confirm_and_pay.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

import '../../../../../shared/resources/assets_manager.dart';
import '../../../../../shared/resources/value_manager.dart';
import '../../../../../shared/ui_kits/ava_text_form_field/ava_text_form_field.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  static const pageName = 'user-info-page';
  static const pagePath = '/user-info-page';

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  String? _selectedGender;
  String? dateOfBirth;
  String? specialService;

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final List<String> genderOptions = [
      localization.gender_male,
      localization.gender_female,
      localization.gender_unspecified
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        title: Text(localization.passengerInfo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AvaTextFormField(
                      controller: TextEditingController(),
                      hintText: localization.latin_first_name,
                      borderColor: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(height: 8),
                    AvaTextFormField(
                      controller: TextEditingController(),
                      hintText: localization.latin_last_name,
                      borderColor: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(height: 8),
                    AvaTextFormField(
                      textInputType: TextInputType.number,
                      controller: TextEditingController(),
                      hintText: localization.nationalId,
                      borderColor: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(height: 8),
                    AvaTextFormField(
                      controller: TextEditingController(),
                      hintText: localization.latin_last_name,
                      borderColor: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(height: 8),
                    AvaTextFormField(
                      onTap: () async {
                        Jalali? picked = await showPersianDatePicker(
                          context: context,
                          initialDate: Jalali.now(),
                          firstDate: Jalali(1300, 1),
                          lastDate: Jalali.now(),
                        );
                        setState(() {
                          dateOfBirth = picked?.formatFullDate();
                        });
                      },
                      suffixIcon: const Icon(IconManager.date),
                      readOnly: true,
                      controller: TextEditingController(),
                      hintText: dateOfBirth ?? localization.birth_date,
                      borderColor: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(localization.chooseGender),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: AppSize.s2,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(AppSize.s12))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppPadding.p6),
                            child: DropdownButton<String>(
                              underline: const SizedBox.shrink(),
                              hint: Text(
                                localization.select_option,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              value: _selectedGender,
                              items: genderOptions.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedGender = newValue;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            '${localization.specialServices}'),
                        InkWell(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(AppSize.s12)),
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (context) => StatefulBuilder(
                                builder: (context, updateState) =>
                                    _buildSpecialServiceModal(
                                        context, updateState),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  width: AppSize.s2,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(AppSize.s12))),
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 12),
                                child: Text(specialService == null
                                    ? localization.select_option
                                    : specialService!),),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Theme.of(context).colorScheme.primary)),
                    child: Text(
                      localization.continuee,
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    onPressed: () {
                      context.push(ConfirmAndPay.pagePath);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildSpecialServiceModal(BuildContext context, updateState) {
    final localization = S.of(context);
    return Stack(
      children: [
        SizedBox(
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
                '${localization.choose} ${localization.specialServices}',
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
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(localization.none),
                  leading: Radio<String>(
                    value: localization.none,
                    groupValue: specialService ?? localization.none,
                    onChanged: (value) {
                      updateState(() {
                        specialService = value ?? localization.none;
                      });
                    },
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(localization.blind),
                  leading: Radio<String>(
                    value: localization.blind,
                    groupValue: specialService,
                    onChanged: (value) {
                      updateState(() {
                        specialService = value ?? localization.none;
                      });
                    },
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(localization.deaf),
                  leading: Radio<String>(
                    value: localization.deaf,
                    groupValue: specialService,
                    onChanged: (value) {
                      updateState(() {
                        specialService = value ?? localization.none;
                      });
                    },
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(localization.wheelchair_full),
                  leading: Radio<String>(
                    value: localization.wheelchair_full,
                    groupValue: specialService,
                    onChanged: (value) {
                      updateState(() {
                        specialService = value ?? localization.none;
                      });
                    },
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(localization.lift_instead_of_wheelchair),
                  leading: Radio<String>(
                    value: localization.lift_instead_of_wheelchair,
                    groupValue: specialService,
                    onChanged: (value) {
                      updateState(() {
                        specialService = value ?? localization.none;
                      });
                    },
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(localization.wheelchair_in_map),
                  leading: Radio<String>(
                    value: localization.wheelchair_in_map,
                    groupValue: specialService,
                    onChanged: (value) {
                      updateState(() {
                        specialService = value ?? localization.none;
                      });
                    },
                  ),
                ),


              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height*0.65,
          left: MediaQuery.of(context).size.width*0.125,
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
                setState(() {});
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
