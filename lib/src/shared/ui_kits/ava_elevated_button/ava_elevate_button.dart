
import 'package:ava_airline/src/shared/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AvaElevatedButton extends StatelessWidget {
  const AvaElevatedButton({
    super.key,
    this.title,
    this.onTap,
    this.backgroundColor,
    this.buttonPadding,
    this.showLoading,
    this.elevation,
    this.underline = false,
    this.borderRadius = 8,
    this.style,
    this.child,
  });

  final VoidCallback? onTap;
  final Color? backgroundColor;
  final String? title;
  final bool? showLoading;
  final bool? underline;
  final double? borderRadius;
  final double? elevation;
  final double? buttonPadding;
  final TextStyle? style;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          ),
        padding: EdgeInsets.all(buttonPadding ?? AppPadding.p12)
        ),
      child: showLoading ?? false
          ? _buildLoadingIndicator(context)
          : _buildButtonContent(context),
    );
  }
  Widget _buildLoadingIndicator(BuildContext context) {
    return Center(
      child: SpinKitThreeBounce(
        color: Theme.of(context).colorScheme.surface,
        size: AppSize.s28,
      ),
    );
  }

  Widget _buildButtonContent(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: child ??
            FittedBox(
              child: Text(
                title ?? '',
                textAlign: TextAlign.center,
                style: style ??
                    Theme.of(context).textTheme.bodyMedium,
              ),
            ),
      ),
    );
  }
}


