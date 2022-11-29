library my_date_format;

/// A Calculator.
enum DateFormat { date, time, dateTime, yearDateTime }

Map<int, String> months = {
  0: 'Января',
  1: 'Февраля',
  2: 'Марта',
  3: 'Апреля',
  4: 'Мая',
  5: 'Июня',
  6: 'Июля',
  7: 'Мая',
  8: 'Августа',
  9: 'Сентября',
  10: 'Октября',
  11: 'Ноября',
  12: 'Декабря',
};

String dateToString(DateTime dateTime) {
  int day = dateTime.day;
  int monthInt = dateTime.month;
  String monthString = months[monthInt]!;
  return '$day $monthString';
}

String formattedDateTime(DateTime dateTime,
    {DateFormat format = DateFormat.time}) {
  String formattedDate = dateToString(dateTime);
  String formattedTime =
      "${dateTime.hour.toString().padLeft(2, '0')} : ${dateTime.minute.toString().padLeft(2, '0')}  ";
  if (format == DateFormat.time) {
    return formattedTime;
  }
  if (format == DateFormat.date) {
    return formattedDate;
  }
  if (format == DateFormat.dateTime) {
    return "$formattedDate  $formattedTime";
  }
  if (format == DateFormat.yearDateTime) {
    return "${dateTime.year} $formattedDate $formattedTime";
  }
  return formattedTime;
}

int dateToInt(DateTime dateTime) {
  int intDateTime = int.parse(dateTime.month.toString() +
      dateTime.day.toString().padLeft(2, '0') +
      dateTime.hour.toString().padLeft(2, '0') +
      dateTime.minute.toString().padLeft(2, '0'));
  return intDateTime;
}

DateTime intToDate(int valueInt) {
  String dateString = valueInt.toString().padLeft(8, '0');
  int month = int.parse(dateString.substring(0, 2));
  int day = int.parse(dateString.substring(2, 4));
  int hour = int.parse(dateString.substring(4, 6));
  int minute = int.parse(dateString.substring(6));
  return DateTime(DateTime.now().year, month, day, hour, minute);
}
