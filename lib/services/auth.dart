import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class User {
  User({@required this.uid});
  final String uid;
}

abstract class AuthBase {
  Stream<User> get onAuthStateChanged;
  Future<User> currentUser();
  Future<User> loginAnonymously();
  Future<void> logout();
}

class Auth implements AuthBase {
  final _auth = FirebaseAuth.instance;

  User _userFromFirebase(FirebaseUser user) {
    return user == null ? null : User(uid: user.uid);
  }

  @override
  Stream<User> get onAuthStateChanged {
    return _auth.onAuthStateChanged.map(_userFromFirebase);
  }

  @override
  Future<User> currentUser() async {
    final currentUser = await _auth.currentUser();
    return _userFromFirebase(currentUser);
  }
  @override
  Future<User> loginAnonymously() async {
    final authResult = await _auth.signInAnonymously();
    return _userFromFirebase(authResult.user);
  }
  @override
  Future<void> logout() async {
    await _auth.signOut();
  }
}