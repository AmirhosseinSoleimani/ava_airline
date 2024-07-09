import 'package:ava_airline/src/features/home/home.dart';

class AboutUsHomePage extends StatelessWidget {
  const AboutUsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.6,
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('خدمات ویژه', style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold, fontSize: AppSize.s28),),
                    Space.w8,
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
                  ],
                ),
                Space.h16,
                Text(
                  'شرکت هواپیمایی آوا در سال 1402 فعالیت خود را آغاز کرده‌است. دفتر مرکزی شرکت هواپیمایی آوا در شهر تهران، خیابان آیت‌الله کاشانی واقع است. چشم‌انداز ما، ایجاد بستری است که بتواند به بهترین شکل ممکن، نیاز مسافرین محترم را برآورده نماید و تجربه‌ای شایسته‌ را برای شما رقم بزند',
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(ImageManager.backgroundAboutUs)),
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(ImageManager.airplane3)),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: AppSize.s120,
                    width: 392,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSecondary,
                      borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppPadding.p8),
                      child: Row(
                        children: [
                          Expanded(child: Image.asset(ImageManager.perfume, fit: BoxFit.cover,)),
                          Space.w8,
                          Expanded(child: Image.asset(ImageManager.seat, fit: BoxFit.cover)),
                          Space.w8,
                          Expanded(child: Image.asset(ImageManager.personnel, fit: BoxFit.cover)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
