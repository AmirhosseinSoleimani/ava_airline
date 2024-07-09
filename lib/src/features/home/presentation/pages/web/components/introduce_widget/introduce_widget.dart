import 'package:ava_airline/src/features/home/home.dart';

class IntroduceWidget extends StatelessWidget {
  const IntroduceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: (width < 1415 && width > 1215) ? width * 0.7 : (width <= 1215 && width > 1070) ? width * 0.8 : (width <= 1070 && width > 945) ? width * 0.9 : (width < 945) ? width : width * 0.6,
      height: 380,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
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
                      Text('آوا همراه آرامش شمــــــــا', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s28),),
                    ],
                  ),
                  Space.h16,
                  Text('تخصص و تعهد تمام کارکنان شرکت هواپیمایی آوا؛ تجربه یک پرواز آرام را برای شما فراهم کرده‌است', style: Theme.of(context).textTheme.bodyMedium,),
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
                      Text('عدم تاخیر', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Space.h8,
                  Text('تلاش شرکت هواپیمایی آوا، حداقل رساندن زمان تاخیر پروازهاست', style: Theme.of(context).textTheme.bodyMedium,),
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
                      Text('پرسنل حرفه ای', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Space.h8,
                  Text('تعهد و تخصص پرسنل شرکت هواپیمایی آوا، تکیه‌گاه مطمئن پروازهای شماست', style: Theme.of(context).textTheme.bodyMedium),
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
                      Text('خدمات ویژه', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Space.h8,
                  Text('با خدمات ویژه شرکت هواپیمایی آوا، حسی متفاوت از پرواز را تجربه خواهیدکرد', style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(ImageManager.airplaneIntroduceAva2, scale: 0.8,)),
                  Padding(
                    padding: const EdgeInsets.only(top: AppPadding.p32),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(ImageManager.airplaneIntroduceAva1, scale: 6,)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
