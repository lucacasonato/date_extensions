library date_extensions;

/// Utilities related to week calculations.
extension OrdinalDateUtils on DateTime {
  /// The number of days starting from Jan 1 of a year. This is also called the ordinal date.
  ///
  /// Calculated as per https://en.wikipedia.org/wiki/Ordinal_date#Calculation
  int get dayOfYear => difference(DateTime(year, 1, 1)).inDays.floor() + 1;
}

/// Utilities related to week calculations.
extension WeekUtils on DateTime {
  /// The ISO week of the current date. As per ISO 8601 a week starts with Monday and ends on Sunday.
  ///
  /// Calculated as per https://en.wikipedia.org/wiki/ISO_week_date#Calculation
  int get week => ((dayOfYear - weekday + 10) / 7).floor();
}
