import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpp/views/signInOne.dart';
import 'package:vpp/widgets/app_color.dart';
import 'package:vpp/widgets/app_text_style.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  late final PageController _controller;

  int _currentPage = 0;

  final List<String> _titles = ['Request collection', 'Track requests'];

  final List<String> _descriptions = [
    'Submit a request for live stock or dead animal collection through the VPP app',
    'Keep track on your requests through the VPP app',
  ];

  int get _pageCount => _titles.length;

  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Next Button
  void _goToNextPage() {
    if (_currentPage < _pageCount - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAll(() => const SignInOne());
    }
  }

  /// Skip Button
  void _skipOnboarding() {
    Get.offAll(() => const SignInOne());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          /// Background Image
          Image.asset(
            'assets/images/Feature showcase 01.png',
            fit: BoxFit.cover,
          ),

          /// Gradient Overlay
          IgnorePointer(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColor.transparent,
                    AppColor.transparent,
                    AppColor.black54,
                    AppColor.black,
                  ],
                  stops: [0.0, 0.55, 0.93, 1.0],
                ),
              ),
            ),
          ),

          /// PageView
          PageView.builder(
            controller: _controller,

            physics: const NeverScrollableScrollPhysics(),

            itemCount: _pageCount,

            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const Spacer(),

                    /// Title
                    Text(
                      _titles[index],
                      style: AppTextStyle.onboardHeading,
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 8),

                    /// Description
                    Text(
                      _descriptions[index],
                      style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'Inter',
                        color: AppColor.white,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    /// Space for bottom navigation
                    const SizedBox(height: 115),
                  ],
                ),
              );
            },
          ),

          /// Bottom Navigation
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  /// Skip Button
                  TextButton(
                    onPressed: _skipOnboarding,
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                      ),
                    ),
                  ),

                  /// Page Indicators
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(_pageCount, (index) {
                        return _buildIndicator(index);
                      }),
                    ),
                  ),

                  /// Next Button
                  TextButton(
                    onPressed: _goToNextPage,
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColor.buttonText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Page Indicator
  Widget _buildIndicator(int index) {
    final bool isSelected = _currentPage == index;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isSelected ? 16 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isSelected ? AppColor.buttonText : AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
