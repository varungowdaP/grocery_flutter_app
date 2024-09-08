


class TValidator {
  static String? validateEmail(String? value){
    if (value == null || value.isEmpty){
      return 'Email is required';
    }
    //Regular expression for email validation
    final emailRegExp =RegExp(r'^[\w.-]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)){
      return 'invalid email addresss';

    }
    return null;
  }
 static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'password is required';

    }
    // check fo rminimum password length
   if(value.length <6){
     return 'password must be atleast  6 characters ';

   }
   return null;

 }
 static String? validatePhoneNumber(String? value){
    if (value ==null||value.isEmpty){
      return 'phone  number is required';

    }
    //regular expression for phone number validation
   final phoneRegExp=RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)){
      return'invalid phone number format (10 digits required)';

    }
    return null;
 }
 //add more custom validators AS neede for your specific requirements
}