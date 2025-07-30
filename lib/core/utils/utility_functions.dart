class UtilityFunctions {
  static String formatTime(DateTime time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  static String formatNumber(int number) {
    if (number >= 1000) {
      double thousands = number / 1000.0;
      if (thousands % 1 == 0) {
        return '${thousands.toInt()}k';
      } else {
        return '${thousands.toStringAsFixed(1)}k';
      }
    }
    return number.toString();
  }
}
