/*

  Created by: Bakhromjon Polat
  Created on: Dec 02 2025

*/

import 'package:formz/formz.dart';
import 'package:hilol_chat_flutter/src/extensions/string_x.dart';

enum EmailOrPhoneInputError { empty, invalid }

class EmailOrPhoneInput extends FormzInput<String, EmailOrPhoneInputError> {
  const EmailOrPhoneInput.pure() : super.pure('');
  const EmailOrPhoneInput.dirty([super.value = '']) : super.dirty();

  @override
  EmailOrPhoneInputError? validator(String value) {
    if (value.isEmpty) {
      return EmailOrPhoneInputError.empty;
    }

    final type = value.getUsernameType();
    if (type.isEmpty) {
      return EmailOrPhoneInputError.invalid;
    }

    return null;
  }
}
