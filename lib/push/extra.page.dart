import 'dart:developer';

import 'package:fcm/router/router.dart';
import 'package:flutter/material.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(AutoRouter.of(context).routeData.path);
    return const Scaffold(
      body: Center(
        child: Text("Extra"),
      ),
    );
  }
}
