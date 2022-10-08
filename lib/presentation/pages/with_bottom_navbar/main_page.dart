import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../share/styles/themes.dart';
import 'account_page.dart';
import 'featured_page.dart';
import '../../../injections.dart';
import 'learning_page.dart';
import 'search_page.dart';
import 'wishlist_page.dart';
import '../../widgets/app_bars.dart';

import '../../cubits/page_cubit.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final pageCubit = getIt<PageCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: BlocBuilder(
          bloc: pageCubit,
          builder: (context, state) {
            return appBars[pageCubit.state];
          },
        ),
      ),
      body: BlocBuilder(
        bloc: pageCubit,
        builder: (context, state) {
          switch (state) {
            case 0:
              return const FeaturedPage();
            case 1:
              return const SearchPage();
            case 2:
              return const LearningPage();
            case 3:
              return const WishListPage();
            case 4:
              return const AccountPage();
            default:
              return const FeaturedPage();
          }
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

// ignore: camel_case_types
class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  final pageCubit = getIt<PageCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: pageCubit,
      builder: (context, state) => BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        showUnselectedLabels: true,
        currentIndex: pageCubit.state,
        selectedLabelStyle: TextStyle(fontWeight: bold),
        unselectedLabelStyle: TextStyle(fontWeight: bold),
        elevation: 16,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          pageCubit.setPage(value);
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.star_rounded,
            ),
            icon: Icon(
              Icons.star_outline_rounded,
            ),
            label: 'Featured',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.search,
            ),
            icon: Icon(
              Icons.search_rounded,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.play_circle_fill_rounded,
            ),
            icon: Icon(
              Icons.play_circle_outline_rounded,
            ),
            label: 'My learning',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.favorite_rounded,
            ),
            icon: Icon(
              Icons.favorite_border_rounded,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.account_circle_rounded,
            ),
            icon: Icon(
              Icons.account_circle_outlined,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
