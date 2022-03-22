// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../page/book.dart' as _i2;
import '../page/favorite.dart' as _i3;
import '../page/home.dart' as _i1;
import '../page/most_reading.dart' as _i6;
import '../page/popular_page.dart' as _i5;
import '../page/profile.dart' as _i4;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    BookRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.BookPage());
    },
    FavoriteRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.FavoritePage());
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ProfilePage());
    },
    PopularRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PopularPage());
    },
    MostReading.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MostReading());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeRoute.name, path: '/', children: [
          _i7.RouteConfig(BookRouter.name,
              path: 'books',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(PopularRoute.name,
                    path: 'popular', parent: BookRouter.name),
                _i7.RouteConfig(MostReading.name,
                    path: 'most-reading', parent: BookRouter.name)
              ]),
          _i7.RouteConfig(FavoriteRouter.name,
              path: 'favorite', parent: HomeRoute.name),
          _i7.RouteConfig(ProfileRouter.name,
              path: 'profile', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BookPage]
class BookRouter extends _i7.PageRouteInfo<void> {
  const BookRouter({List<_i7.PageRouteInfo>? children})
      : super(BookRouter.name, path: 'books', initialChildren: children);

  static const String name = 'BookRouter';
}

/// generated route for
/// [_i3.FavoritePage]
class FavoriteRouter extends _i7.PageRouteInfo<void> {
  const FavoriteRouter() : super(FavoriteRouter.name, path: 'favorite');

  static const String name = 'FavoriteRouter';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter() : super(ProfileRouter.name, path: 'profile');

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i5.PopularPage]
class PopularRoute extends _i7.PageRouteInfo<void> {
  const PopularRoute() : super(PopularRoute.name, path: 'popular');

  static const String name = 'PopularRoute';
}

/// generated route for
/// [_i6.MostReading]
class MostReading extends _i7.PageRouteInfo<void> {
  const MostReading() : super(MostReading.name, path: 'most-reading');

  static const String name = 'MostReading';
}
