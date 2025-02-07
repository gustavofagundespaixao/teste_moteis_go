import 'package:intl/intl.dart';

class AppFormats {
  static String doubleToCurrency({
    required double value,
    bool showSymbol = true,
    bool showDecimalDigits = true,
  }) {
    final format = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: showSymbol ? 'R\$' : '',
      decimalDigits: showDecimalDigits ? 2 : 0,
    );
    return format.format(value);
  }
}
