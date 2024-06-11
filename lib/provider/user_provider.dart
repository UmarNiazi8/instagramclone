import 'package:flutter/material.dart';
import 'package:instagramclone/model/user.dart';
import 'package:instagramclone/resources/auth_method.dart';

class UserProvider with ChangeNotifier {
  bool isloading = false;
  User? _user;
  final AuthMethods _authmethods = AuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    isloading = true;
    User user = await _authmethods.getUserDetails();
    _user = user;
    isloading = false;
    notifyListeners();
  }
}
