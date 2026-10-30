import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchPhoneCall( BuildContext context, String phoneNumber ) async {
  final normalizedNumber = phoneNumber.replaceAll( RegExp( r'[^0-9+]' ), '' );
  final phoneUri = Uri(
    scheme: 'tel',
    path: normalizedNumber,
  );

  try {
    final launched = await launchUrl(
      phoneUri,
      mode: LaunchMode.externalApplication,
    );

    if ( !launched ) {
      _showPhoneLaunchError( context );
    }
  } on PlatformException {
    _showPhoneLaunchError( context );
  } on MissingPluginException {
    _showPhoneLaunchError( context );
  }
}

void _showPhoneLaunchError( BuildContext context ) {
  ScaffoldMessenger.of( context ).showSnackBar(
    SnackBar(
      content: Text( 'ไม่สามารถเปิดแอปโทรศัพท์ได้' ),
    ),
  );
}
