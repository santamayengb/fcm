// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../authflow/pages/authflow.dart' as _i1;
import '../Dashboard/pages/dashboard.page.dart' as _i4;
import '../Home/pages/pages.dart' as _i3;
import '../push/extra.page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthFlow.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthFlow());
    },
    Extra.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ExtraPage());
    },
    MyHomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.MyHomePage());
    },
    DashboardRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DashboardPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(AuthFlow.name, path: '/', children: [
          _i5.RouteConfig(MyHomeRoute.name, path: '', parent: AuthFlow.name),
          _i5.RouteConfig(DashboardRoute.name,
              path: 'dashboard-page', parent: AuthFlow.name)
        ]),
        _i5.RouteConfig(Extra.name, path: '/extra-page')
      ];
}

/// generated route for
/// [_i1.AuthFlow]
class AuthFlow extends _i5.PageRouteInfo<void> {
  const AuthFlow({List<_i5.PageRouteInfo>? children})
      : super(AuthFlow.name, path: '/', initialChildren: children);

  static const String name = 'AuthFlow';
}

/// generated route for
/// [_i2.ExtraPage]
class Extra extends _i5.PageRouteInfo<void> {
  const Extra() : super(Extra.name, path: '/extra-page');

  static const String name = 'Extra';
}

/// generated route for
/// [_i3.MyHomePage]
class MyHomeRoute extends _i5.PageRouteInfo<void> {
  const MyHomeRoute() : super(MyHomeRoute.name, path: '');

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i4.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute() : super(DashboardRoute.name, path: 'dashboard-page');

  static const String name = 'DashboardRoute';
}
