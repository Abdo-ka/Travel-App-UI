/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow-down.svg
  String get arrowDown => 'assets/icons/arrow-down.svg';

  /// File path: assets/icons/aya-dark.svg
  String get ayaDark => 'assets/icons/aya-dark.svg';

  /// File path: assets/icons/beach.jpg
  AssetGenImage get beach => const AssetGenImage('assets/icons/beach.jpg');

  /// File path: assets/icons/dubai.jpg
  AssetGenImage get dubai => const AssetGenImage('assets/icons/dubai.jpg');

  /// File path: assets/icons/favourite.svg
  String get favourite => 'assets/icons/favourite.svg';

  /// File path: assets/icons/holidays.svg
  String get holidays => 'assets/icons/holidays.svg';

  /// File path: assets/icons/home.svg
  String get home => 'assets/icons/home.svg';

  /// File path: assets/icons/hotels.svg
  String get hotels => 'assets/icons/hotels.svg';

  /// File path: assets/icons/location.svg
  String get location => 'assets/icons/location.svg';

  /// File path: assets/icons/notification.svg
  String get notification => 'assets/icons/notification.svg';

  /// File path: assets/icons/option.svg
  String get option => 'assets/icons/option.svg';

  /// File path: assets/icons/partner_travel.svg
  String get partnerTravel => 'assets/icons/partner_travel.svg';

  /// File path: assets/icons/promotion.svg
  String get promotion => 'assets/icons/promotion.svg';

  /// File path: assets/icons/rental.svg
  String get rental => 'assets/icons/rental.svg';

  /// File path: assets/icons/send.svg
  String get send => 'assets/icons/send.svg';

  /// File path: assets/icons/share.svg
  String get share => 'assets/icons/share.svg';

  /// File path: assets/icons/user.svg
  String get user => 'assets/icons/user.svg';

  /// List of all assets
  List<dynamic> get values => [
        arrowDown,
        ayaDark,
        beach,
        dubai,
        favourite,
        holidays,
        home,
        hotels,
        location,
        notification,
        option,
        partnerTravel,
        promotion,
        rental,
        send,
        share,
        user
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
