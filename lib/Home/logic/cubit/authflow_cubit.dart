import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'authflow_state.dart';

class AuthflowCubit extends Cubit<AuthflowState> {
  AuthflowCubit() : super(const AuthflowState(state: AuthState.isLoggedOut)) {
    FirebaseAuth _auth = FirebaseAuth.instance;

    auth = _auth;

    _auth.authStateChanges().listen((user) {
      if (user != null) {
        emit(const AuthflowState(state: AuthState.isLoggedIn));
      } else {
        emit(const AuthflowState(state: AuthState.isLoggedOut));
      }
    });
  }

  late final FirebaseAuth auth;

  signIn(String email, String pwd) async {
    await auth.signInWithEmailAndPassword(
        email: "test@test.com", password: "123456789");
  }

  logout() async {
    await auth.signOut();
  }
}
