import 'package:auto_route/auto_route.dart';
import 'package:book_listing/page/book.dart';
import 'package:book_listing/page/favorite.dart';
import 'package:book_listing/page/home.dart';
import 'package:book_listing/page/profile.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: HomePage,
      children: [
        // our BooksRouter has been moved into the children field
        AutoRoute(
          path: "books",
          name: "BookRouter",
          page: BookPage,
          
        ),
        // our FavoriteRouter has been moved into the children field
        AutoRoute(
          path: "favorite",
          name: "FavoriteRouter",
          page: FavoritePage,
          
        ),
        // our ProfileRouter has been moved into the children field
        AutoRoute(
          path: "profile",
          name: "ProfileRouter",
          page: ProfilePage,
          
        ),
      ],
    ),
  ],
)
class $AppRouter {}
