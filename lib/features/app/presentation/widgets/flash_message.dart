import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class FlashMessage {
  static void showMySnackBar(context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        /// need to set following properties for best effect of awesome_snackbar_content
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,

        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height*0.05,
          left: 10,
          right: 10,
        ),
        
        content: AwesomeSnackbarContent(
          color: Color(0xfff97350),
          title: 'Ohh!',
          message: message,
          messageFontSize: 17,
          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
          contentType: ContentType.failure,
        ),
      ));
  }
}
