import 'package:ava_airline/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AvaInkwellButton extends StatelessWidget {
  const AvaInkwellButton({
    super.key,
    this.title,
    this.onTap,
    this.backgroundColor,
    this.buttonPadding,
    this.borderColor,
    this.showLoading,
    this.elevation,
    this.underline = false,
    this.borderRadius = 8,
    this.height,
    this.style,
    this.child,
  });

  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? borderColor;
  final String? title;
  final bool? showLoading;
  final bool? underline;
  final double? borderRadius;
  final double? elevation;
  final double? height;
  final double? buttonPadding;
  final TextStyle? style;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height ?? AppSize.s60,
          child: InkWell(
            onTap: onTap,
            child: showLoading ?? false
                ? Center(
                    child: SpinKitThreeBounce(
                    color: Theme.of(context).colorScheme.surface,
                    size: 30,
                  ))
                : Container(
                    decoration: BoxDecoration(
                      color: backgroundColor ??
                          Theme.of(context).colorScheme.primary,
                      border: Border.all(
                        width: 2,
                        color:
                            borderColor ?? Theme.of(context).colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(borderRadius ?? 12),
                    ),
                    child: Center(
                      child: FittedBox(
                        child: Padding(
                          padding: EdgeInsets.all(buttonPadding ?? 0.0),
                          child: child ??
                              Text(
                                title ?? '',
                                textAlign: TextAlign.center,
                                style: style,
                              ),
                        ),
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
