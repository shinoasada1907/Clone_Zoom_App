import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<User?> get authChanges => _auth.authStateChanges();

  signInWithGoogle() async {
    //tạo hàm đăng nhập bằng Google
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn().signIn(); // cho phép người dùng đăng nhập
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication; // kiểm tra đăng nhập của người dùng
    final credential = GoogleAuthProvider.credential(
      // lấy token của phiên đăng nhập người dùng
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    UserCredential userCredential =
        await _auth.signInWithCredential(credential); // tạo phiên đăng nhập
    User? user = userCredential.user;
    if (user != null) {
      if (userCredential.additionalUserInfo!.isNewUser) {
        _firestore.collection('users').doc(user.uid).set({
          'username': user.displayName,
          'uid': user.uid,
          'profilephoto': user.photoURL,
        });
      }
    }
  }
}
