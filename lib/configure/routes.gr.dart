// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../page/book.dart' as _i2;
import '../page/favorite.dart' as _i3;
import '../page/home.dart' as _i1;
import '../page/profile.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BookRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.BookPage());
    },
    FavoriteRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FavoritePage());
    },
    ProfileRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeRoute.name, path: '/', children: [
          _i5.RouteConfig(BookRouter.name,
              path: 'books', parent: HomeRoute.name),
          _i5.RouteConfig(FavoriteRouter.name,
              path: 'favorite', parent: HomeRoute.name),
          _i5.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BookPage]
class BookRouter extends _i5.PageRouteInfo<void> {
  const BookRouter() : super(BookRouter.name, path: 'books');

  static const String name = 'BookRouter';
}

/// generated route for
/// [_i3.FavoritePage]
class FavoriteRouter extends _i5.PageRouteInfo<void> {
  const FavoriteRouter() : super(FavoriteRouter.name, path: 'favorite');

  static const String name = 'FavoriteRouter';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}
