// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i7;

import '../page/favorite.dart' as _i3;
import '../page/home.dart' as _i1;
import '../page/most_reading.dart' as _i6;
import '../page/popular_page.dart' as _i5;
import '../page/profile.dart' as _i4;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BookRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    FavoriteRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FavoritePage());
    },
    ProfileRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    },
    PopularRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PopularPage());
    },
    MostReading.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MostReading());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(BookRouter.name,
              path: 'books',
              parent: HomeRoute.name,
              children: [
                _i2.RouteConfig(PopularRoute.name,
                    path: 'popular', parent: BookRouter.name),
                _i2.RouteConfig(MostReading.name,
                    path: 'most-reading', parent: BookRouter.name),
                _i2.RouteConfig('*#redirect',
                    path: '*',
                    parent: BookRouter.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i2.RouteConfig(FavoriteRouter.name,
              path: 'favorite', parent: HomeRoute.name),
          _i2.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class BookRouter extends _i2.PageRouteInfo<void> {
  const BookRouter({List<_i2.PageRouteInfo>? children})
      : super(BookRouter.name, path: 'books', initialChildren: children);

  static const String name = 'BookRouter';
}

/// generated route for
/// [_i3.FavoritePage]
class FavoriteRouter extends _i2.PageRouteInfo<void> {
  const FavoriteRouter() : super(FavoriteRouter.name, path: 'favorite');

  static const String name = 'FavoriteRouter';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRouter extends _i2.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.PopularPage]
class PopularRoute extends _i2.PageRouteInfo<void> {
  const PopularRoute() : super(PopularRoute.name, path: 'popular');

  static const String name = 'PopularRoute';
}

/// generated route for
/// [_i6.MostReading]
class MostReading extends _i2.PageRouteInfo<void> {
  const MostReading() : super(MostReading.name, path: 'most-reading');

  static const String name = 'MostReading';
}
