import 'package:http/http.dart';

class API {
  static const hostConnect =
      "http://10.10.134.212//Computer/opt/lampp/htdocs/grm-app-endpoints";

  static const hostConnectUser = "$hostConnect/user";

  //validate email
  static const validateEmail = "$hostConnect/user/validate_email.php";

  //signup user
  static const signup = "$hostConnect/user/signup.php";
}
