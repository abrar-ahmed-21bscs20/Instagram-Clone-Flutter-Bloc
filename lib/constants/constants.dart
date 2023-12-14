import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyIcons {
  static const String defaultProfilePicUrl =
      "https://firebasestorage.googleapis.com/v0/b/connect-hub-40e51.appspot.com/o/user_profile_pictures%2Fdefault.png?alt=media&token=02e0efea-5488-4204-a3b3-9811c6225eb9";
}

class MyColors {
  static Color primaryColor = Colors.grey[900]!;
  static Color secondaryColor = Colors.white;
  static Color tercharyColor = Colors.grey[600]!;
  static Color buttonColor1 = Colors.blueGrey;
  static Color buttonColor2 = Colors.blueGrey.shade200;
}

class MyFonts {
  static TextStyle firaSans({
    FontWeight? fontWeight,
    Color? fontColor,
    double? fontSize,
  }) =>
      GoogleFonts.firaSans(
        fontWeight: fontWeight,
        color: fontColor,
        fontSize: fontSize,
      );
}
