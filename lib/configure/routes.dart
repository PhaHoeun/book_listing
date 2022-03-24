import 'package:auto_route/auto_route.dart';
import 'package:book_listing/page/book/book.dart';
import 'package:book_listing/page/favorite.dart';
import 'package:book_listing/page/home.dart';
import 'package:book_listing/page/book/most_reading.dart';
import 'package:book_listing/page/book/popular_page.dart';
import 'package:book_listing/page/profile.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: HomePage,
      children: [
        AutoRoute(
          path: "books",
          name: "BookRouter",
          page: BookPage,
          children: [
            CustomRoute(
                page: PopularPage,
                path: 'popular',
                name: 'PopularRouter',
                initial: true,
                transitionsBuilder: TransitionsBuilders.noTransition),
            CustomRoute(
              page: MostReading,
              path: 'most-reading',
              name: 'MostReadingRouter',
              transitionsBuilder: TransitionsBuilders.noTransition,
              
            ),
          ],
        ),
        AutoRoute(
          path: "favorite",
          name: "FavoriteRouter",
          page: FavoritePage,
        ),
        
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
