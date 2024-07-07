import 'package:ava_airline/src/features/home/home.dart';

class NavbarComponent extends StatelessWidget {
  const NavbarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    const height = AppSize.s100;
    return (width > 1024) ? Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: (width <= 1530 && width > 1312) ? width * 0.7 : (width <= 1312 && width > 1150) ? width * 0.8 : (width <= 1150) ? width * 0.9 : width * 0.6,
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p12),
                  child: SvgPicture.asset(SvgManager.avaAirLineLogoSvg,semanticsLabel: 'Ava Airlines', width: AppSize.s100,),
                ),
                const NavbarItems(),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AvaInkwellButton(
                  buttonPadding: AppPadding.p12,
                  onTap: () {
                  },
                  title: 'ورود/ثبت نام',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                  borderRadius: AppSize.s8,
                  backgroundColor: ColorDarkThemeManager.transparent,
                  borderColor: Theme.of(context).colorScheme.onPrimary,
                ),
                Space.w8,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                  child: VerticalDivider(
                    thickness: AppSize.s1,
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: AppSize.s1,
                  ),
                ),
                Space.w8,
                SvgPicture.asset(SvgManager.earthSvg,colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onPrimary, BlendMode.srcIn), semanticsLabel: 'Ava Airlines', width: AppSize.s42,),
                Space.w4,
                Text(
                  'فا',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                )
              ],
            ),

          ],
        ),
      ),
    ) : const SizedBox.shrink();
  }
}
