import 'package:flutter/material.dart';

class ColorConstant{


   static Color backgroundColor = fromHex('#141414');
   static Color logoColor = fromHex('#1E1E1E');
   static Color hintColor = fromHex('#A4A4A4');
   static Color hintBorderColor = fromHex('#515151');
   static Color textFieldColor = fromHex('#292929');
   static Color whiteColor = fromHex('#FFFFFF');
   static Color gradientOne = fromHex('#EFA058');
   static Color gradientTwo = fromHex('#EF5858');
   static Color createAccount = fromHex('#B9B9B9');
   static Color indicatorColor = fromHex('#373737');
   static Color dashColor = fromHex('#BFBFBF');
   static Color fadeColor = fromHex('#363636');
   static Color dividerColor = fromHex('#D04E4E');
   static Color greyColor = fromHex('#696969');
   static Color greyTextColor = fromHex('#4B4B4B'); 
   static Color dashSmallColor = fromHex('#D6D6D6'); 
   static Color gridColor = fromHex('#282828'); 


   static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

}