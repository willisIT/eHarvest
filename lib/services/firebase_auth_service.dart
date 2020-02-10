import 'package:eharvest/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService implements AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User _userFromFirebase(FirebaseUser user) {
    if (user==null) {
      return null;
    }
    return User(
      uid: user.uid,
      email: user.email
    );
  }

  @override
  Stream<User> get onAuthStateChanged => _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);

  @override
  Future<User> createUserWithEmailAndPassword(String email, String password) async{
    final AuthResult authResult = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = authResult.user;
    return _userFromFirebase(user);
  }

  @override
  Future<User> currentUser() async{
    FirebaseUser user = await _firebaseAuth.currentUser();
    return _userFromFirebase(user);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async{
    AuthResult authResult = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password
    );
    FirebaseUser user = authResult.user;
    return _userFromFirebase(user);
  }

  @override
  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }

}