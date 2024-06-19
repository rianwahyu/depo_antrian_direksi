import 'package:intl/intl.dart';

class AppFormat {
  static String shortPrice(num number) {
    return NumberFormat.compactCurrency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(number);
  }

  static String longPrice(num number) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(number);
  }

  static String justDate(DateTime dateTime) {
    return DateFormat('yyyy-mm-dd').format(dateTime);
  }

  /// source DateTime | String
  /// Monday, 2 Jan 24
  static String shortDate(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMM yy').format(DateTime.parse(source));
      case DateTime:
        return DateFormat('EEEE, d MMM yy').format(source);
      default:
        return 'Not Valid';
    }
  }

  /// source DateTime | String
  /// Monday, 2 Januari 2024
  static String fullDate(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMMM yyyy').format(DateTime.parse(source));
      case DateTime:
        return DateFormat('EEEE, d MMMM yyyy').format(source);
      default:
        return 'Not Valid';
    }
  }

  static String getCurrentDate() {
    // var date = DateTime.now().toString();
    // var dateParse = DateTime.parse(date);
    // var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";
    // return formattedDate.toString();

    DateTime dateToday = new DateTime.now();
    String date = dateToday.toString().substring(0, 10);
    return date;
  }

  static String greetingMessage() {
    var timeNow = DateTime.now().hour;

    if (timeNow <= 11.59) {
      return 'Selamat Pagi, ';
    } else if (timeNow > 12 && timeNow <= 16) {
      return 'Selamat Siang, ';
    } else if (timeNow > 16 && timeNow < 20) {
      return 'Selamat Petang, ';
    } else {
      return 'Selamat Malam, ';
    }
  }
}
