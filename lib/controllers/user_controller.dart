import '../models/user.dart';

class userController {
  bool validatcridintials(String username, String Password) {
    if (username.isEmpty || Password.isEmpty) {
      return false;
    }
    return true;
  }

  User createUser(String username, String password) {
    return User(username: username, password: password);
  }
}
