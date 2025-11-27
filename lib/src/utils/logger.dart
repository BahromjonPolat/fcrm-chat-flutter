/*

  Created by: Bakhromjon Polat
  Created on: Nov 27 2025 09:28:09

*/

import 'dart:convert';

abstract final class Log {
  const Log._();

  static void d(Object? obj, {String fileName = ''}) {
    final location = fileName.isEmpty ? '' : '[$fileName]';
    print('🐛 DEBUG $location: $obj');
  }

  static void e(Object? obj, {String fileName = ''}) {
    final location = fileName.isEmpty ? '' : '[$fileName]';
    print('❌ ERROR $location: $obj');
  }

  static void v(Object? obj, {String fileName = ''}) {
    final location = fileName.isEmpty ? '' : '[$fileName]';
    print('📝 VERBOSE $location: $obj');
  }

  static void j(Object? obj, {String fileName = ''}) {
    const encoder = JsonEncoder.withIndent('  ');
    final prettyJson = encoder.convert(obj);
    final location = fileName.isEmpty ? '' : '[$fileName]';
    print('📦 JSON $location:\n$prettyJson');
  }
}
