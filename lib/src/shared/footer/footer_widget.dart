import 'package:flutter/material.dart';
import 'package:ava_airline/src/shared/resources/resources.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart' as flutter_map_lat_lng;
import 'package:url_launcher/url_launcher.dart';


class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    flutter_map_lat_lng.LatLng location = const flutter_map_lat_lng.LatLng(
        35.726081031606256,
        51.32524385767106
    );
    MapController mapController = MapController();
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 380,
          child: Stack(
            children: [
              Image.asset(ImageManager.footerBackgroundImage, fit: BoxFit.cover, width: double.infinity, height: 380,),
              Center(
                child: SizedBox(
                  // width: width * 0.8,
                  height: 380,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppPadding.p24),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(SvgManager.avaAirLineLogoSvg,semanticsLabel: 'Ava Airlines', width: AppSize.s120,),
                              Space.h16,
                              Padding(
                                padding: const EdgeInsets.only(left: AppPadding.p24),
                                child: Text(
                                  'شرکت هواپیمایی آوا با هدف ارائه باکیفیت‌ترین خدمات پروازی فعالیت خود را از سال 1402 آغاز کرده‌است. هدف ما کمک به ارتقای کیفیت هواپیمایی کشور در راستای بهبود تجربه مسافران عزیز از سفرهای پروازی خود است',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Space.h16,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(SvgManager.telegramSvg, colorFilter: ColorFilter.mode(
                                      Theme.of(context).colorScheme.onSecondary,
                                      BlendMode.srcIn),
                                    width: AppSize.s28,
                                    height: AppSize.s28,
                                  ),
                                  Space.w12,
                                  SvgPicture.asset(SvgManager.whatsAppSvg, colorFilter: ColorFilter.mode(
                                      Theme.of(context).colorScheme.onSecondary,
                                      BlendMode.srcIn),
                                    width: AppSize.s28,
                                    height: AppSize.s28,
                                  ),
                                  Space.w12,
                                  SvgPicture.asset(SvgManager.instagramSvg, colorFilter: ColorFilter.mode(
                                      Theme.of(context).colorScheme.onSecondary,
                                      BlendMode.srcIn),
                                    width: AppSize.s28,
                                    height: AppSize.s28,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'دسترسی سریع',
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),
                              ),
                              Space.h16,
                              Padding(
                                padding: const EdgeInsets.only(left: AppPadding.p24),
                                child: Divider(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                              Space.h16,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: AppSize.s12,
                                    height: AppSize.s12,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.primary,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Space.w8,
                                  InkWell(
                                    onTap: (){},
                                    child: Text(
                                      'ثبت شکایت',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                              Space.h16,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: AppSize.s12,
                                    height: AppSize.s12,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.primary,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Space.w8,
                                  InkWell(
                                    onTap: (){},
                                    child: Text(
                                      'فرصت های شغلی',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                              Space.h16,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: AppSize.s12,
                                    height: AppSize.s12,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.primary,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Space.w8,
                                  InkWell(
                                    onTap: (){},
                                    child: Text(
                                      'قوانین و مقررات',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                    ),
                                  ),
                                ],
                              ),
                              Space.h16,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: AppSize.s12,
                                    height: AppSize.s12,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).colorScheme.primary,
                                        shape: BoxShape.circle
                                    ),
                                  ),
                                  Space.w8,
                                  InkWell(
                                    onTap: (){},
                                    child: Text(
                                      'گزارش ایمنی و پیگیری',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ارتباط با ما',
                                style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),
                              ),
                              Space.h16,
                              Padding(
                                padding: const EdgeInsets.only(left: AppPadding.p24),
                                child: Divider(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                              Space.h16,
                              ///telephone
                              InkWell(
                                onTap: (){
                                  _launchUrl('tel:02192001100');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.primary,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(Icons.phone, color: Theme.of(context).colorScheme.onSecondary, size: AppSize.s18,)),
                                    Space.w8,
                                    Text(
                                      '021-9200-1100',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                    ),
                                  ],
                                ),
                              ),
                              Space.h16,
                              ///email
                              InkWell(
                                onTap: (){
                                  _launchUrl('info@avaair.ir');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.primary,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(IconManager.mail, color: Theme.of(context).colorScheme.onSecondary, size: AppSize.s18,)),
                                    Space.w8,
                                    Text(
                                      'info@avaair.ir',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                    ),
                                  ],
                                ),
                              ),
                              Space.h16,
                              ///Address
                              InkWell(
                                onTap: (){
                                  _launchUrl('https://maps.app.goo.gl/n7asDpDVih8wQpB76');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.primary,
                                            shape: BoxShape.circle
                                        ),
                                        child: Icon(IconManager.location, color: Theme.of(context).colorScheme.onSecondary, size: AppSize.s18,)),
                                    Space.w8,
                                    Expanded(
                                      child: Text(
                                        'دفتر مرکزی: تهران، فردوس، بلوار آیت الله کاشانی،تقاطع سلیمی جهرمی، پلاک 186 طبقه 5',
                                        textAlign: TextAlign.start,
                                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Space.h16,
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(AppPadding.p16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(AppPadding.p12),
                              child: FlutterMap(
                                options: MapOptions(
                                  keepAlive: true,
                                  initialZoom: 12,
                                  initialCenter: location,
                                  onMapReady: () {},
                                  onMapEvent: (event) {},
                                  onPositionChanged: (position, status) {
                                  },
                                ),
                                mapController: mapController,
                                children: [
                                  TileLayer(
                                    urlTemplate: 'https://api.parsimap.ir/tile/parsimap-streets-v11-raster/{z}/{x}/{y}?key=p133a42ed78f324f7787c67c45de3d44a363398b54',
                                  ),
                                  MarkerLayer(
                                    markers: [
                                      Marker(
                                        point: location,
                                        width: AppSize.s60,
                                        height: AppSize.s60,
                                        child: Center(
                                          child: Icon(
                                            Icons.location_city_rounded,
                                            size: 16,
                                            color: Theme.of(context).colorScheme.primary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: AppSize.s42,
          color: Theme.of(context).colorScheme.primary,
          child: Center(
            child: Text(
              'تمامی حقوق وب‌سایت متعلق به بهپردازجهان می‌باشد',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
          ),
        )
      ],
    );
  }
}
