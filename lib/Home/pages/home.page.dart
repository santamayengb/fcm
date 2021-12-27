import 'package:fcm/Home/logic/cubit/authflow_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World'),
            TextButton(
                onPressed: () {
                  context.read<AuthflowCubit>().signIn("email", "pwd");
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
