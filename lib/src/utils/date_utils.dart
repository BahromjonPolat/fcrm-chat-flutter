/*

  Created by: Bakhromjon Polat
  Created on: Nov 26 2025 13:26:26

*/

abstract class AppDateUtils {
  const AppDateUtils._();

  static String formatDate(dynamic date, {String? pattern}) {
    final dateTime = DateTime.tryParse(date.toString());

    if (dateTime == null) {
      return '';
    }
    int year = date.year;
    String month = date.month.toString().padLeft(2, '0');
    String day = date.day.toString().padLeft(2, '0');
    String hh = date.hour.toString().padLeft(2, '0');
    String mm = date.minute.toString().padLeft(2, '0');
    String ss = date.second.toString().padLeft(2, '0');

    String formatted;

    switch (pattern) {
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

      default:
        formatted = '$day/$month/$year $hh:$mm';
    }

    return formatted;
  }
}
