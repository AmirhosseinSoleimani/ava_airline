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
                      SvgPicture.asset(SvgManager.avaAirLineLogoSvg, width: AppSize.s60, height: AppSize.s60,),
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
                  Text(localization.mashhadSpecialFaresPageTitle, style: Theme.of(context).textTheme.displayLarge?.copyWith(fontSize: AppSize.s28, fontWeight: FontWeight.bold),),
                  Space.h16,
                  Center(
                    child: SizedBox(
                        width: width * 0.6,
                        height: 380,
                        child: const VideoPlayerWidget()
                    ),
                  ),
                  Space.h16,
                  Center(
                    child: Text(
                      localization.mashhadSpecialFaresParagraph1,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Space.h16,
                  Center(
                    child: Text(
                      localization.mashhadSpecialFaresParagraph2,
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
