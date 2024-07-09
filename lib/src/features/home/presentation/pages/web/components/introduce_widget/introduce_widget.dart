import 'package:ava_airline/src/features/home/home.dart';

class IntroduceWidget extends StatelessWidget {
  const IntroduceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      // width: (width < 1415 && width > 1215) ? width * 0.7 : (width <= 1215 && width > 1070) ? width * 0.8 : (width <= 1070 && width > 945) ? width * 0.9 : (width < 945) ? width : width * 0.6,
      height: 380,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AppSize.s8,
                        height: AppSize.s16,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(AppSize.s16)
                            )

                        ),
                      ),
                      Space.w8,
                      Text(localization.ava_with_you, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s28),),
                    ],
                  ),
                  Space.h16,
                  Text(localization.special_trip, style: Theme.of(context).textTheme.bodyMedium,),
                  Space.h16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AppSize.s8,
                        height: AppSize.s16,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(AppSize.s16)
                            )

                        ),
                      ),
                      Space.w8,
                      Text(localization.no_delay, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Space.h8,
                  Text(localization.minimize_delay, style: Theme.of(context).textTheme.bodyMedium,),
                  Space.h8,
                  const Padding(
                    padding: EdgeInsets.only(left: AppSize.s80),
                    child: Divider(),
                  ),
                  Space.h8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AppSize.s8,
                        height: AppSize.s16,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(AppSize.s16)
                            )

                        ),
                      ),
                      Space.w8,
                      Text(localization.professional_staff, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Space.h8,
                  Text(localization.reliable_flight, style: Theme.of(context).textTheme.bodyMedium),
                  Space.h8,
                  const Padding(
                    padding: EdgeInsets.only(left: AppSize.s80),
                    child: Divider(),
                  ),
                  Space.h8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AppSize.s8,
                        height: AppSize.s16,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(AppSize.s16)
                            )

                        ),
                      ),
                      Space.w8,
                      Text(localization.special_services, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Space.h8,
                  Text(localization.different_experience, style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
            ),
            Space.w16,
            Expanded(
              flex: 5,
              child: Stack(
                children: [

                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(ImageManager.airplaneIntroduceAva2, )),

                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(ImageManager.airplaneIntroduceAva1,)),

                ],
              ),
            ),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
