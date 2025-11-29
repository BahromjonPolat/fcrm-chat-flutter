/*

  Created by: Bakhromjon Polat
  Created on: Nov 29 2025 11:32:34

*/

import 'package:hilol_chat_flutter/src/enums/hilol_chat_language.dart';

import '../languages/translations.dart';

const _emailRegex =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

extension StringExtension on String {
  String getUsernameType() {
    if (RegExp(_emailRegex).hasMatch(this)) {
      return 'email';
    } else if (RegExp('[0-9]{7}').hasMatch((this))) {
      return 'phone';
    }
    return '';
  }

  bool get isEmail => getUsernameType() == 'email';
  bool get isPhone => getUsernameType() == 'phone';

  String correctUsername() {
    if (!isPhone) {
      return this;
    }
    if (startsWith('+')) {
      return this;
    }
    return '+$this';
  }

  String tr({HilolChatLanguage? locale, List<String>? args}) {
    final parts = split('.');
    if (parts.length != 2) {
      return this;
    }

    final category = parts[0];
    final key = parts[1];

    final localeCode = (locale ?? HilolChatLanguage.uzbek).code;
    final res = translations[localeCode]?[category]?[key] ?? this;
    return _replaceArgs(res, args);
  }
}

String _replaceArgs(String res, List<String>? args) {
  if (args == null || args.isEmpty) {
    return res;
  }

  for (final str in args) {
    res = res.replaceFirst('{}', str);
  }
  return res;
}
