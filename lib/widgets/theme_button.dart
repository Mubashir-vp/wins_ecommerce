import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../core/theme/color_class.dart';
import '../core/theme/text_style_class.dart';


class ThemeButton extends StatelessWidget {
  final String label;
  final Function function;
  final Function? onLongFunction;
  final double? height;
  final double? width;
  final double? padding;
  final TextStyle? style;
  final bool loading;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final bool colorRed;
  final double? borderRadius;
  final bool multiChild;
  final IconData? iconData;
  final double iconSize;
  final double fontSize;

  const ThemeButton({
    super.key,
    required this.function,
    this.fontSize = 14,
    this.textColor = ColorsClass.white,
    this.iconSize = 18,
    this.multiChild = false,
    this.onLongFunction,
    this.iconData,
    required this.label,
    this.height,
    this.width,
    this.padding,
    this.style,
    this.loading = false,
    this.colorRed = false,
    this.color,
    this.borderColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null
          ? const EdgeInsets.symmetric(horizontal: 10, vertical: 10)
          : const EdgeInsets.all(0),
      child: SizedBox(
        height: height == null ? 45 : height!,
        width: width ?? double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? ColorsClass.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 6.0),
              side: BorderSide(
                width: 1.0,
                color: borderColor ?? ColorsClass.divider,
              ),
            ),
          ),
          onLongPress: () {
            onLongFunction!();
          },
          onPressed: () {
            if (!loading) {
              function();
            }
          },
          child: loading
              ? SpinKitWave(
                  color: colorRed ? ColorsClass.primaryColor : Colors.white,
                  size: 20,
                )
              : multiChild
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          label,
                          style: style ?? TextStyleClass.mulishWhite14,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          iconData,
                          color: ColorsClass.white,
                          size: iconSize,
                        ),
                      ],
                    )
                  : Text(
                      label,
                      style: style ??
                          TextStyleClass.mulishWhite14.copyWith(
                            color: textColor,
                            fontSize: fontSize,
                          ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
                    ),
        ),
      ),
    );
  }
}

class LocationThemeButton extends StatelessWidget {
  final String label;
  final Function function;
  final double? height;
  final double? width;
  final double? padding;
  final TextStyle? style;
  final bool loading;

  const LocationThemeButton({
    super.key,
    required this.function,
    required this.label,
    this.height,
    this.width,
    this.padding,
    this.style,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding == null
          ? const EdgeInsets.symmetric(horizontal: 25, vertical: 15)
          : const EdgeInsets.all(0),
      child: SizedBox(
        height: height == null ? 45 : height!,
        width: width ?? double.infinity,
        child: ElevatedButton.icon(
          icon: const Icon(Icons.my_location),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor:
                MaterialStateProperty.all(ColorsClass.primaryColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
          ),
          onPressed: () {
            if (!loading) {
              function();
            }
          },
          label: Text(
            label,
            style: style ?? TextStyleClass.mulishRegular14White,
          ),
        ),
      ),
    );
  }
}
