import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  //data which we'll be saving are keys

  static String userLoggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

  //saving the data to SF  (i.e shared preferences)

  // getting the data from the SF

  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance(); 

    return sf.getBool(userLoggedInKey); 
    //It means, the sf will return true if the key is present in the shared preferences false if not
  }
}
