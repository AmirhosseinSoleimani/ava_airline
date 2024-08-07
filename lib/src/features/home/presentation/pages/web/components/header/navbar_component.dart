import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/home/home.dart';

import '../../../../../../../shared/resources/localization/locale_provider.dart';

class NavbarComponent extends StatelessWidget {
  const NavbarComponent({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final width = MediaQuery.of(context).size.width;
    final localeProvider = context.read<LocaleProvider>();
    const height = AppSize.s100;
    return (width > 1024) ? Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: (width <= 1530 && width > 1312) ? width * 0.75 : (width <= 1312 && width > 1150) ? width * 0.85 : (width <= 1150) ? width * 0.95 : width * 0.75,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: InkWell(
                      onTap: () => context.go(HomePage.homePagePath),
                      child: SvgPicture.asset(SvgManager.avaAirLineLogoSvg,  semanticsLabel: 'Ava Airlines', width: AppSize.s100,)),
                ),
                NavbarItems(color: color,),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AvaInkwellButton(
                  buttonPadding: AppPadding.p12,
                  onTap: () {
                  },
                  title: localization.login_register,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: color ?? Theme.of(context).colorScheme.onPrimary),
                  borderRadius: AppSize.s8,
                  backgroundColor: ColorDarkThemeManager.transparent,
                  borderColor: color ?? Theme.of(context).colorScheme.onPrimary,
                ),
                Space.w8,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPadding.p32),
                  child: VerticalDivider(
                    thickness: AppSize.s1,
                    color: color ?? Theme.of(context).colorScheme.onPrimary,
                    width: AppSize.s1,
                  ),
                ),
                Space.w8,
                PopupMenuButton(
                  onSelected: (String newValue) {
                    localeProvider.changeLocale(Locale(newValue.toString() ?? 'fa'));
                  },
                  itemBuilder: (BuildContext context) {
                    return <String>['en', 'fa', 'ar'].map<PopupMenuItem<String>>((String value) {
                      return PopupMenuItem<String>(
                        value: value,
                        child: Text(
                          value.toUpperCase(),
                        ),
                      );
                    }).toList();
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(SvgManager.earthSvg,colorFilter: ColorFilter.mode(color ?? Theme.of(context).colorScheme.onPrimary, BlendMode.srcIn), semanticsLabel: 'Ava Airlines', width: AppSize.s42,),
                      Space.w4,
                      Text(
                        localization.language,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: color ?? Theme.of(context).colorScheme.onPrimary),
                      )
                    ],
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    ) : const SizedBox.shrink();
  }
}
