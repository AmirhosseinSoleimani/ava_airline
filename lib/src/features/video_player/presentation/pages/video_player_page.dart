import 'package:ava_airline/src/features/video_player/presentation/pages/widgets/video_player_widget/video_player_widget.dart';

import '../../../../../generated/l10n.dart';
import '../../../../shared/footer/footer_widget.dart';
import '../../../app/my_app.dart';
import '../../../bottom_navigation_bar/bottom_navigation_bar.dart';

class VideoPlayerPage extends StatelessWidget {
  static const videoPlayerPageName = 'video-player-page';
  static const videoPlayerPagePath = '/video-player-page';
  const VideoPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.onPrimary,
              width: double.infinity,
              height: 80,
              child: (width > 1024)
                  ? NavbarComponent(color: Theme.of(context).colorScheme.onSurface,)
                  : Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        child: Icon(
                          IconManager.density,
                          size: AppSize.s24,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      Space.w16,
                      SvgPicture.asset(SvgManager.avaAirLineLogoSvg, width: AppSize.s60, height: AppSize.s60, colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.onSurface, BlendMode.srcIn)),
                    ],
                  ),
                ),
              ),
            ),
            Space.h64,
            SizedBox(
              width: width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('سفر زیارتی مشهد', style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: AppSize.s28, fontWeight: FontWeight.bold),),
                  Space.h16,
                  Center(
                    child: SizedBox(
                        width: width * 0.6,
                        height: 380,
                        child: const VideoPlayerWidget()),
                  ),
                  Space.h16,
                  Center(
                    child: Text(
                      'شهر مشهد و اقع در استان خراسان رضوی یکی از استان‌های تاریخی و مذهبی ایران محسوب می‌شود. این شهر سالانه میزبان حدود ۲۷ میلیون نفر از مسافران داخلی و خارجی است که برای زیارت و مراسم‌های مذهبی به این مکان سفر می‌کنند. دلیل اصلی این حجم مسافر و گردشگر وجود بارگاه امام رضا(ع) در شهر مشهد است. این شهر به لحاظ فرهنگی هم بسیار غنی است.',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Space.h16,
                  Center(
                    child: Text(
                      'آرامگاه خیلی از بزرگان دین، شعر و ادبیات مثل فردوسی که تاثیر بسزایی در فرهنگ و زبان ایرانی‌ها داشته، در این شهر و توابع آن قرار دارد. همه این‌ها باعث شده مشهد در سال‌های اخیر به یک شهر مدرن تبدیل شود، به طوری که در حال حاضر مراکز تفریحی، گردشگری و تجاری متنوع و پیشرفته‌ای در جای‌جای آن وجود دارد.',
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.start,
                    ),
                  )
                ],
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
