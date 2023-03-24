import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final FirebaseAuth _firebaseauth = FirebaseAuth.instance;

  User? get currentUser => _firebaseauth.currentUser;

  Stream <User?> get authStateChanges => _firebaseauth.authStateChanges();

  Future <void> signInwithEmailAndPassword({
  required String email,
    required String password,
}) async {
    await _firebaseauth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future <void> createUserwithEmailAndPassword(
  {
    required String email,
    required String password,
})
  async {
    await _firebaseauth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signout()async{
    await _firebaseauth.signOut();
  }
}