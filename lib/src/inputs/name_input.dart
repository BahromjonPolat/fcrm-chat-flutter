/*

  Created by: Bakhromjon Polat
  Created on: Dec 02 2025

*/

import 'package:formz/formz.dart';

enum NameInputError { empty, tooShort }

class NameInput extends FormzInput<String, NameInputError> {
  const NameInput.pure() : super.pure('');
  const NameInput.dirty([super.value = '']) : super.dirty();

  @override
  NameInputError? validator(String value) {
    if (value.isEmpty) {
      return NameInputError.empty;
    }
    if (value.trim().length < 2) {
      return NameInputError.tooShort;
    }
    return null;
  }
}
