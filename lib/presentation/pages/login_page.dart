import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:udemy_clone/core/constants/colors.dart';
import 'package:udemy_clone/core/constants/routes.dart' as route;
import 'package:udemy_clone/core/constants/text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    backgroundColor: secondaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, route.homePage);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Text(
                      'Browse',
                      style: TextStyle(
                        fontSize: 18,
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
                    backgroundColor: secondaryColor,
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
                        fontSize: 18,
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
        LoginSubPage(
          image: 'assets/images/login1.png',
          title: 'Take Video Courses',
          body: 'From cooking to coding and everything between',
        ),
        LoginSubPage(
          image: 'assets/images/login2.png',
          title: 'Learn from the Best',
          body:
              'Approachable expert-instructors, vetted by 35 million learners',
        ),
        LoginSubPage(
          image: 'assets/images/login3.png',
          title: 'Go at Your Own Pace',
          body: 'Lifetime access to purchased courses, anytime, anywhere',
        ),
      ],
    );
  }
}

class LoginSubPage extends StatelessWidget {
  final String image;
  final String title;
  final String body;

  const LoginSubPage({
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
                style: loginTitle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
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
                  style: loginBody.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
