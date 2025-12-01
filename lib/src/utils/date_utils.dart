/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 13:26:26

*/

import 'package:hilol_chat_flutter/src/extensions/string_x.dart';
import 'package:hilol_chat_flutter/src/languages/strings.dart';

abstract class AppDateUtils {
  const AppDateUtils._();

  static String formatDate(dynamic date, {String? format}) {
    final dateTime = DateTime.tryParse(date.toString());

    if (dateTime == null) {
      return '';
    }
    int year = dateTime.year;
    String month = dateTime.month.toString().padLeft(2, '0');
    String day = dateTime.day.toString().padLeft(2, '0');
    String hh = dateTime.hour.toString().padLeft(2, '0');
    String mm = dateTime.minute.toString().padLeft(2, '0');
    String ss = dateTime.second.toString().padLeft(2, '0');

    String formatted;

    switch (format) {
      case 'hh:mm:ss':
        formatted = '$hh:$mm:$ss';
        break;
      case 'hh:mm':
        formatted = '$hh:$mm';
        break;

      case 'dd.mm.yyyy':
        formatted = '$day.$month.$year';
        break;

      case 'yyyy.mm.dd':
        formatted = '$year.$month.$day';
        break;

      case 'dd.mm.yyyy | hh:mm':
        formatted = '$day.$month.$year | $hh:$mm';
        break;

      case 'yyyy-mm-dd':
        formatted = '$year-$month-$day';
        break;

      case 'dd | mm | yyyy':
        formatted = '$year | $month | $day';
        break;
      case 'ss':
        formatted = ':$ss';
        break;

      case 'ddMM':
        formatted = '${dateTime.day} ${getMonth(dateTime.month)}';
        break;

      default:
        formatted = '$day/$month/$year $hh:$mm';
    }

    return formatted;
  }

  static String getMonth(int month) {
    switch (month) {
      case 1:
        return Strings.time_january.tr();
      case 2:
        return Strings.time_february.tr();
      case 3:
        return Strings.time_march.tr();
      case 4:
        return Strings.time_april.tr();
      case 5:
        return Strings.time_may.tr();
      case 6:
        return Strings.time_june.tr();
      case 7:
        return Strings.time_july.tr();
      case 8:
        return Strings.time_august.tr();
      case 9:
        return Strings.time_september.tr();
      case 10:
        return Strings.time_october.tr();
      case 11:
        return Strings.time_november.tr();
      case 12:
        return Strings.time_december.tr();
      default:
        return '';
    }
  }

  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}
