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

import '../page/book/book.dart' as _i2;
import '../page/book/most_reading.dart' as _i6;
import '../page/book/popular_page.dart' as _i5;
import '../page/favorite.dart' as _i3;
import '../page/home.dart' as _i1;
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
    PopularRouter.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.PopularPage(),
          transitionsBuilder: _i7.TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    },
    MostReadingRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MostReadingRouterArgs>(
          orElse: () =>
              MostReadingRouterArgs(author: queryParams.optString('author')));
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.MostReading(key: args.key, author: args.author),
          transitionsBuilder: _i7.TransitionsBuilders.noTransition,
          opaque: true,
          barrierDismissible: false);
    },
    AuthorRouter.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<AuthorRouterArgs>(
          orElse: () =>
              AuthorRouterArgs(author: queryParams.optString('author')));
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.MostReading(key: args.key, author: args.author),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomeRoute.name, path: '/', children: [
          _i7.RouteConfig(BookRouter.name,
              path: 'books',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig('#redirect',
                    path: '',
                    parent: BookRouter.name,
                    redirectTo: 'popular',
                    fullMatch: true),
                _i7.RouteConfig(PopularRouter.name,
                    path: 'popular', parent: BookRouter.name),
                _i7.RouteConfig(MostReadingRouter.name,
                    path: 'most-reading',
                    parent: BookRouter.name,
                    children: [
                      _i7.RouteConfig(AuthorRouter.name,
                          path: '', parent: MostReadingRouter.name)
                    ])
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
class PopularRouter extends _i7.PageRouteInfo<void> {
  const PopularRouter() : super(PopularRouter.name, path: 'popular');

  static const String name = 'PopularRouter';
}

/// generated route for
/// [_i6.MostReading]
class MostReadingRouter extends _i7.PageRouteInfo<MostReadingRouterArgs> {
  MostReadingRouter(
      {_i8.Key? key, String? author, List<_i7.PageRouteInfo>? children})
      : super(MostReadingRouter.name,
            path: 'most-reading',
            args: MostReadingRouterArgs(key: key, author: author),
            rawQueryParams: {'author': author},
            initialChildren: children);

  static const String name = 'MostReadingRouter';
}

class MostReadingRouterArgs {
  const MostReadingRouterArgs({this.key, this.author});

  final _i8.Key? key;

  final String? author;

  @override
  String toString() {
    return 'MostReadingRouterArgs{key: $key, author: $author}';
  }
}

/// generated route for
/// [_i6.MostReading]
class AuthorRouter extends _i7.PageRouteInfo<AuthorRouterArgs> {
  AuthorRouter({_i8.Key? key, String? author})
      : super(AuthorRouter.name,
            path: '',
            args: AuthorRouterArgs(key: key, author: author),
            rawQueryParams: {'author': author});

  static const String name = 'AuthorRouter';
}

class AuthorRouterArgs {
  const AuthorRouterArgs({this.key, this.author});

  final _i8.Key? key;

  final String? author;

  @override
  String toString() {
    return 'AuthorRouterArgs{key: $key, author: $author}';
  }
}
