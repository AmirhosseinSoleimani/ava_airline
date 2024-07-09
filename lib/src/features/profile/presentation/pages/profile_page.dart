import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/shared/resources/localization/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  static const profilePageName = 'profile-page';
  static const profilePagePath = '/profile-page';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = context.read<LocaleProvider>();
    return Scaffold(
      body: Container(
        child: Center(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton(
                    value: S.of(context).currentLanguage,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: const [
                      DropdownMenuItem(value: 'fa',child: Text('fa'),),
                      DropdownMenuItem(value: 'en',child: Text('en'),),
                      DropdownMenuItem(value: 'ar',child: Text('ar'),),
                    ],
                    onChanged: (newValue) {
                        localeProvider.changeLocale(Locale(newValue?.toString() ?? 'fa'));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
