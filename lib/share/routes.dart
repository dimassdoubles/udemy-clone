// routes name
import 'package:flutter/material.dart';
import 'package:udemy_clone/presentation/pages/with_bottom_navbar/learning_page.dart';
import 'package:udemy_clone/presentation/pages/with_bottom_navbar/main_page.dart';
import 'package:udemy_clone/presentation/pages/guest_page.dart';
import 'package:udemy_clone/presentation/pages/with_bottom_navbar/search_page.dart';
import 'package:udemy_clone/presentation/pages/player_page.dart';
import 'package:udemy_clone/presentation/pages/splash_page.dart';
import 'package:udemy_clone/presentation/pages/with_bottom_navbar/wishlist_page.dart';

import '../presentation/pages/course_list_page.dart';
import '../presentation/pages/with_bottom_navbar/account_page.dart';
import '../presentation/pages/signin_page.dart';
import '../theme_test.dart';

const String mainPage = "main";
const String splashPage = "splash";
const String guestPage = "login";
const String signinPage = "signin";
const String featuredPage = "home";
const String searchPage = "search";
const String learningPage = "learning";
const String wishlistPage = "wishlist";
const String accountPage = "account";
// const String courseDetailPage = "course";
const String playerPage = "player";
const String themeTest = "themeTest";
const String courseListPage = "courseListPage";
const String categoryListPage = "categoryListPage";

// controll our page flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case courseListPage:
      return MaterialPageRoute(
        builder: (context) => const CourseListPage(),
      );
    case themeTest:
      return MaterialPageRoute(
        builder: (context) => const ThemeTestPage(),
      );
    case playerPage:
      return MaterialPageRoute(
        builder: (context) => const PlayerPage(),
      );
    // case courseDetailPage:
    //   return MaterialPageRoute(
    //     builder: (context) => const CourseDetailPage(),
    //   );
    case splashPage:
      return MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );
    case guestPage:
      return MaterialPageRoute(
        builder: (context) => const GuestPage(),
      );
    case signinPage:
      return MaterialPageRoute(
        builder: (context) => const SigninPage(),
      );
    case featuredPage:
      return MaterialPageRoute(
        builder: (context) => MainPage(),
      );
    case searchPage:
      return MaterialPageRoute(
        builder: (context) => const SearchPage(),
      );
    case learningPage:
      return MaterialPageRoute(
        builder: (context) => const LearningPage(),
      );
    case wishlistPage:
      return MaterialPageRoute(
        builder: (context) => const WishListPage(),
      );
    case accountPage:
      return MaterialPageRoute(
        builder: (context) => const AccountPage(),
      );
    default:
      throw ("This route name doesn't exist");
  }
}
