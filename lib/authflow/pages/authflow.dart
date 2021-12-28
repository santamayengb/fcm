import 'package:auto_route/auto_route.dart';
import 'package:fcm/Home/logic/cubit/authflow_cubit.dart';
import 'package:fcm/router/app.router.gr.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthFlow extends StatelessWidget {
  const AuthFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AuthflowCubit>().state.state;
    return AutoRouter.declarative(routes: (context) {
      switch (state) {
        case AuthState.isLoggedIn:
          return [
            const DashboardRoute(),
          ];
        case AuthState.isLoggedOut:
          return [
            const MyHomeRoute(),
          ];
      }
    });
  }
}
