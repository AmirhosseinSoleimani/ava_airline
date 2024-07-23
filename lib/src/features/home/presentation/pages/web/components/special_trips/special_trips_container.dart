import 'package:ava_airline/generated/l10n.dart';
import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/book_flight/presentation/pages/web/components/flight_selection/flight_selection_page.dart';
import 'package:ava_airline/src/features/features.dart';
import 'package:ava_airline/src/features/home/domain/entities/special_fare_entity.dart';
import 'package:ava_airline/src/features/video_player/presentation/pages/video_player_page.dart';

class SpecialTripsContainer extends StatefulWidget {
  const SpecialTripsContainer(
      {super.key,
      required this.hoverImageCardEntity,
      this.isSmall = false,
      this.isOff = false});

  final HoverImageCardEntity hoverImageCardEntity;
  final bool? isSmall;
  final bool? isOff;

  @override
  State<SpecialTripsContainer> createState() => _SpecialTripsContainerState();
}

class _SpecialTripsContainerState extends State<SpecialTripsContainer> {
  @override
  Widget build(BuildContext context) {
    final localization = S.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12),
      child: MouseRegion(
        onEnter: (_) => setState(() {
          widget.hoverImageCardEntity.isHover = true;
        }),
        onExit: (_) => setState(() {
          widget.hoverImageCardEntity.isHover = false;
        }),
        child: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: DurationConstant.d3000),
              height: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s12),
                child: Stack(
                  children: [
                    Transform.scale(
                      scale: (widget.hoverImageCardEntity.isHover ?? false)
                          ? 1.18
                          : 1.0,
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                widget.hoverImageCardEntity.imageUrl),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: DurationConstant.d500),
              left: 20,
              right: 20,
              bottom: (widget.hoverImageCardEntity.isHover ?? false) ? 180 : 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.hoverImageCardEntity.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  (widget.isSmall ?? false)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.hoverImageCardEntity.date,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                            ),
                            Space.h12,
                            (widget.isOff ?? false)
                                ? Column(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          text:
                                              '${widget.hoverImageCardEntity.typeFlight} ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
                                          children: [
                                            TextSpan(
                                              text: widget
                                                  .hoverImageCardEntity.price,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary,
                                                      decoration: TextDecoration
                                                          .lineThrough),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Space.h8,
                                      RichText(
                                        text: TextSpan(
                                          text:
                                              '${widget.hoverImageCardEntity.typeFlight} ',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary),
                                          children: [
                                            TextSpan(
                                              text: widget.hoverImageCardEntity
                                                      .offPrice ??
                                                  widget.hoverImageCardEntity
                                                      .price,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onPrimary),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                : Text(
                                    widget.hoverImageCardEntity.price,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary),
                                  ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text(
                                widget.hoverImageCardEntity.date,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                widget.hoverImageCardEntity.price,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: DurationConstant.d500),
              bottom: (widget.hoverImageCardEntity.isHover ?? false) ? 20 : -50,
              left: 20,
              right: 20,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: DurationConstant.d500),
                opacity:
                    (widget.hoverImageCardEntity.isHover ?? false) ? 1.0 : 0.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: AppSize.s48,
                      child: ElevatedButton(
                        onPressed: () {
                          context
                              .go(FlightSelectionPage.flightSelectionPagePath);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s8),
                          ),
                        ),
                        child: Text(
                          localization.reserve,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary),
                        ),
                      ),
                    ),
                    Space.h16,
                    SizedBox(
                      width: double.infinity,
                      height: AppSize.s48,
                      child: InkWell(
                        onTap: () {
                          context.go(VideoPlayerPage.videoPlayerPagePath);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorLightThemeManager.transparent,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(AppSize.s8)),
                              border: Border.all(
                                  width: AppSize.s1,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary)),
                          child: Center(
                            child: Text(
                              localization.details,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if(widget.isOff ?? false)Padding(
              padding: const EdgeInsets.only(top: AppPadding.p12, left: AppPadding.p12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary
                  ),
                  child: Center(
                    child: Text('10%-', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.onSecondary),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
