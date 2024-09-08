import 'package:intl/intl.dart';
class TFormatter
{
  static String formatDate(DateTime? date){
    date ??=DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);

  }
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_us',symbol: '\$').format(amount);

  }
  static String formatPhoneNumber(String phoneNumber){
    //assume 10digit us phone number:
    if (phoneNumber .length==10){
      return '(${phoneNumber.substring(0,3)}) ${phoneNumber.substring(3,6)} ${phoneNumber.substring(6)}';

    }else if
    (phoneNumber.length ==11){
       return'(${phoneNumber.substring(0,4)}) ${phoneNumber.substring(4,7)} ${phoneNumber.substring(7)}';


    }
    //add mor custom phone number formatting if it it is needed
    return phoneNumber;

    }
    //not fully tested


  }
