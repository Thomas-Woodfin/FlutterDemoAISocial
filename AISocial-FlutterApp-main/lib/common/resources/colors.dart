import 'package:flutter/material.dart';

class ColorManager{
  static Color brandColor = HexColor.fromHex('#2842DA');
  static Color introTwoGradientStart = HexColor.fromHex('#13359E');
  static Color introTwoGradientEnd = HexColor.fromHex('#2741DA');
  static Color everyChallengeGradientEnd = HexColor.fromHex('#1A35D3');
  static Color ash = HexColor.fromHex('#D0DAF7');
  static Color lightAsh = HexColor.fromHex('#3F3F3F');
  static Color nextBtnBgColor = HexColor.fromHex('#B7D2FF');
  static Color searchBoxBorderColor = HexColor.fromHex('#B7D2FF');
  static Color gpaSubTitleColor = HexColor.fromHex('#4C4C4C');
  static Color chatHistoryItemBorderColor = HexColor.fromHex('#111111');
  static Color chatGPTVersionSelectionColor = HexColor.fromHex('#294CE0');
  static Color chatGPTNewVersionBgColor = HexColor.fromHex('#305EED');
  static Color createBtnBgColor = HexColor.fromHex('#1A35D2');
  static Color continueChattingItemBorderColor = HexColor.fromHex('#424242');
  static Color continueChattingItemSubTitleColor = HexColor.fromHex('#7C7C7C');
  static Color inputBoxHintTextColor = HexColor.fromHex('#838383');
  static Color peopleIChatterWithSubtitleTextColor = HexColor.fromHex('#5B5B5B');
  static Color singleChatBgTextColor = HexColor.fromHex('#F0EDE8');
}

extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString=hexColorString.replaceAll('#', '');
    if(hexColorString.length==6){
      hexColorString="FF$hexColorString";
    }
    return Color(int.parse(hexColorString,radix: 16));
  }
}