import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import '../../share/constants/colors.dart';
import '../../share/routes.dart' as route;
import '../../share/styles/themes.dart';

class GuestPage extends StatefulWidget {
  const GuestPage({super.key});

  @override
  State<GuestPage> createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  final _pageController = PageController();
  final _itemLength = 3;
  final double _dotSpacing = 16;
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [_buildPageView(), _buildCirclePageIndicator()],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: nearBlack,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, route.featuredPage);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Text(
                      'Browse',
                      style: TextStyle(
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: nearBlack,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Column _buildCirclePageIndicator() {
    return Column(
      children: [
        const Expanded(
          flex: 7,
          child: SizedBox(),
        ),
        Center(
          child: CirclePageIndicator(
            itemCount: _itemLength,
            currentPageNotifier: _currentPageNotifier,
            dotColor: unselectedCirclePageIndicator,
            selectedDotColor: secondaryColor,
            dotSpacing: _dotSpacing,
          ),
        ),
        const Expanded(
          flex: 3,
          child: SizedBox(),
        ),
      ],
    );
  }

  PageView _buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: (value) {
        _currentPageNotifier.value = value;
      },
      children: const [
        GuestSubPage(
          image: 'assets/images/guestIcon1.png',
          title: 'Take Video Courses',
          body: 'From cooking to coding and everything between',
        ),
        GuestSubPage(
          image: 'assets/images/guestIcon2.png',
          title: 'Learn from the Best',
          body:
              'Approachable expert-instructors, vetted by 35 million learners',
        ),
        GuestSubPage(
          image: 'assets/images/guestIcon3.png',
          title: 'Go at Your Own Pace',
          body: 'Lifetime access to purchased courses, anytime, anywhere',
        ),
      ],
    );
  }
}

class GuestSubPage extends StatelessWidget {
  final String image;
  final String title;
  final String body;

  const GuestSubPage({
    Key? key,
    required this.image,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: SizedBox(
            width: 70 / 100 * MediaQuery.of(context).size.width,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(image),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                title,
                style: textStyle1.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  body,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
