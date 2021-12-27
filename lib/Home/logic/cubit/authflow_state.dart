part of 'authflow_cubit.dart';

enum AuthState { isLoggedIn, isLoggedOut }

class AuthflowState extends Equatable {
  const AuthflowState({required this.state});

  final AuthState state;

  @override
  List<Object> get props => [state];
}
