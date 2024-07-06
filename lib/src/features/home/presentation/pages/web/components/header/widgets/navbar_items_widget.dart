import 'package:ava_airline/src/features/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:ava_airline/src/features/features.dart';


class NavbarItems extends StatefulWidget implements PreferredSizeWidget {
  const NavbarItems({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(AppSize.s60);

  @override
  NavbarItemsState createState() => NavbarItemsState();
}

class NavbarItemsState extends State<NavbarItems> {

  final navbarItems = ["رزرو", "اطلاعات سفر", "در طول پرواز", "مقاصد پروازی", "باشگاه مسافران ویژه"];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: navbarItems.asMap().entries.map((element) => _buildMenuItem(context, element.value, element.key)).toList(),
    );
  }
  Widget _buildMenuItem(BuildContext context, String title, int index) {
    return InkWell(
      onTap: () {
        showModalFromTop(context, index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
        child: Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.secondary)),
      ),
    );
  }
}

void showModalFromTop(BuildContext context, int? selectedIndex) {
  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;
  final navbarItems = ["رزرو", "اطلاعات سفر", "در طول پرواز", "مقاصد پروازی", "باشگاه مسافران ویژه"];
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Colors.black45,
    transitionDuration: const Duration(milliseconds: DurationConstant.d300),
    pageBuilder: (BuildContext buildContext, Animation animation,
        Animation secondaryAnimation) {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: ColorLightThemeManager.transparent,
          height: 300,
          child: Material(
            color: ColorLightThemeManager.whiteColor,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Column(
                children: [
                  SizedBox(
                    height: AppSize.s60,
                    width: width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(AppPadding.p8),
                              child: SvgPicture.asset(SvgManager.avaAirLineLogoSvg,semanticsLabel: 'Ava Airlines', width: AppSize.s100, colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.error, BlendMode.srcIn)),
                            ),
                            Row(
                              children: navbarItems.asMap().entries.map((element) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
                                child: InkWell(
                                  onTap: () {

                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(element.value, style: Theme.of(context).textTheme.titleMedium,),
                                      Space.h4,
                                      Container(
                                        height: AppSize.s2,
                                        width: AppSize.s60,
                                        color: Theme.of(context).colorScheme.error,
                                      ),
                                    ],
                                  ),
                                ),
                              )).toList(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AvaInkwellButton(
                              buttonPadding: AppPadding.p12,
                              onTap: () {
                              },
                              title: 'ورود/ثبت نام',
                              style: Theme.of(context).textTheme.bodyMedium,
                              borderRadius: AppSize.s8,
                              backgroundColor: ColorDarkThemeManager.transparent,
                              borderColor: Theme.of(context).colorScheme.onSurface,
                            ),
                            Space.w8,
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                              child: VerticalDivider(
                                thickness: AppSize.s1,
                                color: Theme.of(context).colorScheme.onSurface,
                                width: AppSize.s1,
                              ),
                            ),
                            Space.w8,
                            SvgPicture.asset(SvgManager.earthSvg,colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn), semanticsLabel: 'Ava Airlines', width: AppSize.s42,),
                            Space.w4,
                            Text(
                              'فا',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.secondary),
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                  const Divider(),
                  Space.h16,
                  Wrap(
                    spacing: AppSize.s12,
                    children: [
                      Text('خرید بلیط'),
                      Text('پذیرش آنلاین'),
                      Text('استرداد بلیط'),
                      Text('تغییر بلیط'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}