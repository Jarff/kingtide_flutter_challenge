/// Extensions for DateTime formatting and manipulation
extension DateTimeExtension on DateTime {
  /// Formats the date as DD/MM/YYYY
  String get formattedDate {
    return '${day.toString().padLeft(2, '0')}/${month.toString().padLeft(2, '0')}/${year}';
  }
}
