import 'package:auto_route/auto_route.dart';
import 'package:book_listing/page/book.dart';
import 'package:book_listing/page/favorite.dart';
import 'package:book_listing/page/home.dart';
import 'package:book_listing/page/profile.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: BookPage),
    AutoRoute(page: FavoritePage),
    AutoRoute(page: ProfilePage),
  ],
)
class $AppRouter {}
