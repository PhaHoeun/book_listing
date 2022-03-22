import 'package:auto_route/auto_route.dart';
import 'package:book_listing/page/favorite.dart';
import 'package:book_listing/page/home.dart';
import 'package:book_listing/page/most_reading.dart';
import 'package:book_listing/page/popular_page.dart';
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
          page: EmptyRouterPage,
          children: [
            AutoRoute(page: PopularPage, path: 'popular'),
            AutoRoute(page: MostReading, path: 'most-reading'),
            RedirectRoute(path: '*', redirectTo: ''),

          ]
          
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
