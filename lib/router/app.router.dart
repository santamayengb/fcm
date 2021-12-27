import 'package:auto_route/auto_route.dart';
import 'package:fcm/Dashboard/pages/dashboard.page.dart';

import 'package:fcm/Home/pages/pages.dart';
import 'package:fcm/authflow/pages/authflow.dart';
import 'package:fcm/push/extra.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: AuthFlow,
      initial: true,
      children: [
        AutoRoute(
          path: '',
          page: MyHomePage,
        ),
        AutoRoute(
          page: DashboardPage,
        ),
      ],
    ),
    AutoRoute(name: 'Extra', page: ExtraPage)
  ],
)
class $AppRouter {}
