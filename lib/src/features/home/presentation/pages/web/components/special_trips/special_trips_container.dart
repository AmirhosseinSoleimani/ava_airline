import 'package:ava_airline/src/features/book_flight/book_flight.dart';
import 'package:ava_airline/src/features/home/domain/entities/special_fare_entity.dart';


class SpecialTripsContainer extends StatefulWidget {
  const SpecialTripsContainer({super.key, required this.hoverImageCardEntity, this.isSmall = false});

  final HoverImageCardEntity hoverImageCardEntity;
  final bool? isSmall;

  @override
  State<SpecialTripsContainer> createState() => _SpecialTripsContainerState();
}

class _SpecialTripsContainerState extends State<SpecialTripsContainer> {
  @override
  Widget build(BuildContext context) {
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
              duration: const Duration(milliseconds: DurationConstant.d500),
              height: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppSize.s12),
                child: Stack(
                  children: [
                    Transform.scale(
                      scale: (widget.hoverImageCardEntity.isHover ?? false) ? 1.1 : 1.0,
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.hoverImageCardEntity.imageUrl),
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
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                  ),
                  (widget.isSmall ?? false) ? Column(
                    children: [
                      Text(
                        widget.hoverImageCardEntity.date,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      Space.h12,
                      Text(
                        widget.hoverImageCardEntity.price,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ],
                  ) : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.hoverImageCardEntity.date,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                      ),
                      Text(
                        widget.hoverImageCardEntity.price,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
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
                duration: const Duration(milliseconds:  DurationConstant.d500),
                opacity: (widget.hoverImageCardEntity.isHover ?? false) ? 1.0 : 0.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: AppSize.s48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSize.s8),
                          ),
                        ),
                        child: Text('رزور', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary),),
                      ),
                    ),
                    Space.h16,
                    SizedBox(
                      width: double.infinity,
                      height: AppSize.s48,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: ColorLightThemeManager.transparent,
                              borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
                              border: Border.all(
                                  width: AppSize.s1,
                                  color: Theme.of(context).colorScheme.onPrimary
                              )
                          ),
                          child: Center(
                            child: Text('جزئیات', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onPrimary,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
