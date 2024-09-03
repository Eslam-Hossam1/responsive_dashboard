import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle textStyleRegular16(context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveText(context, baseFontSize: 16),
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleMedium16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveText(context, baseFontSize: 16),
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleSemiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, baseFontSize: 16),
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: getResponsiveText(context, baseFontSize: 16),
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle textStyleSemiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, baseFontSize: 20),
      color: const Color(0xFF064061),
    );
  }

  static TextStyle textStyleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveText(context, baseFontSize: 12),
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle textStyleRegular14(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveText(context, baseFontSize: 14),
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle textStyleSemiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, baseFontSize: 24),
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle textStyleSemiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, baseFontSize: 18),
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle textStyleMedium20(BuildContext context) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveText(context, baseFontSize: 20),
      color: const Color(0xFFFFFFFF),
    );
  }

  static double getResponsiveText(context, {required double baseFontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsizeTextFontSize = scaleFactor * baseFontSize;
    double lowerLimit = baseFontSize * .8;
    double upperLimit = baseFontSize * 1.2;

    return responsizeTextFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(context) {
    // var dispatcher = PlatformDispatcher.instance;
    // var physicalWidth = dispatcher.views.first.physicalSize.width;
    // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    double width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tabletBreakPoint) {
      return width / 600;
    } else if (width < SizeConfig.desktopBreakPoint) {
      return width / 1100;
    } else {
      return width / 1550;
    }
  }
}
