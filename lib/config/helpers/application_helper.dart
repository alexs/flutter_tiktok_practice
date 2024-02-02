import 'package:intl/intl.dart';

class ApplicationHelper{
    static String number_to_h(double number){
      final formatterNumber = NumberFormat.compactCurrency(
        decimalDigits: 0,
        symbol: '',
      ).format(number);
      
      return formatterNumber;
    }
}