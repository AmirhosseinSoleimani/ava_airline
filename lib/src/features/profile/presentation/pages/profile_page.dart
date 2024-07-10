import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/home/presentation/pages/mobile/widgets/drawer/drawer_widget.dart';
import 'package:ava_airline/src/shared/resources/localization/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  static const profilePageName = 'profile-page';
  static const profilePagePath = '/profile-page';

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = context.read<LocaleProvider>();
    final localization = S.of(context);
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: const Column(
          children: [
            Text('Soroush Beigi'),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        toolbarHeight: 120,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            'assets/image/gold.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '35.5',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 4),
                        Text(localization.milesFlown),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          localization.gold,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        const SizedBox(height: 4),
                        Text(localization.tier),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            Container(
              margin: const EdgeInsets.all(4),
              height: 60,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.of(context).changeLanguage,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DropdownButton(
                          value: S.of(context).currentLanguage,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: const [
                            DropdownMenuItem(
                              value: 'fa',
                              child: Text('fa'),
                            ),
                            DropdownMenuItem(
                              value: 'en',
                              child: Text('en'),
                            ),
                            DropdownMenuItem(
                              value: 'ar',
                              child: Text('ar'),
                            ),
                          ],
                          onChanged: (newValue) {
                            localeProvider.changeLocale(
                                Locale(newValue?.toString() ?? 'fa'));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () =>  SystemChannels.platform.invokeMethod('SystemNavigator.pop'),
              child: SizedBox(
                height: 60,
                child: Card(
                  color: Theme.of(context).colorScheme.primary,
                  child: Center(
                      child: Text(
                    localization.logout,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w500,
                        ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
