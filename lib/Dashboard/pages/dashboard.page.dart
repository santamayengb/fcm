import 'dart:developer';

import 'package:fcm/Home/logic/cubit/authflow_cubit.dart';
import 'package:fcm/router/app.router.gr.dart';
import 'package:fcm/router/router.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String data = "";

  checkForIntialMessage() async {
    RemoteMessage? initailMsg =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initailMsg != null) {
      context.router.push(const ExtraRoute());
    }
  }

  @override
  void initState() {
    super.initState();

    FirebaseMessaging.instance.getInitialMessage();
    checkForIntialMessage();
    FirebaseMessaging.onMessage.listen((msg) {
      if (msg.notification != null) {
        log(msg.notification!.body.toString());
        setState(() {
          data = msg.notification!.body.toString();
        });
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((_msg) {
      String msg = _msg.data["route"];

      switch (msg) {
        case "Extra":
          context.router.push(const ExtraRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dashboard"),
            Text(data),
            TextButton(
                onPressed: () {
                  context.read<AuthflowCubit>().logout();
                },
                child: const Text("Log out")),
            TextButton(
                onPressed: () {
                  context.router.push(const ExtraRoute());
                },
                child: const Text("/Extra")),
          ],
        ),
      ),
    );
  }
}
