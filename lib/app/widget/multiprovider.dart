import 'package:fcm/Home/logic/cubit/authflow_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MultiProviderWrapper extends StatelessWidget {
  const MultiProviderWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => AuthflowCubit(),
      )
    ], child: child);
  }
}
