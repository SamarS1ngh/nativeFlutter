import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';

class ContactViewModel extends StateNotifier<int> {
  ContactViewModel() : super(0);

  final textToSpeechChannel =
      const MethodChannel('com.example.mahawanti_task/tts');

  Future<void> speakUserInfo(String username, String city, String state,
      String address, String country) async {
    final userInfo = {
      "username": username,
      "city": city,
      "state": state,
      "address": address,
      "country": country,
    };

    try {
      await textToSpeechChannel.invokeMethod('sendDataToAndroid', userInfo);
    } catch (e) {
      log(e.toString());
    }
  }
}
