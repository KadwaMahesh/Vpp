import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vpp/views/signInOne.dart';
import 'package:vpp/widgets/app_color.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({super.key});

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  late final PageController _controller;

  int _currentPage = 0;

  final int _pageCount = 2;

  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('PageView Example')),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColor.transparent,
                      AppColor.transparent,
                      AppColor.black54,
                      AppColor.black,
                    ],
                    stops: [0.0, 0.55, 0.85, 1.0],
                  ),
                ),
                child: Image.asset(
                  "assets/images/Feature showcase 01.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.green,
                child: const Center(
                  child: Text('Page 2', style: TextStyle(fontSize: 32)),
                ),
              ),
            ],
          ),

          // Page indicator
          Positioned(
            right: 0,
            bottom: 24,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 41.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _pageCount,
                      (index) => _buildIndicator(index),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_currentPage < _pageCount - 1) {
                        _controller.animateToPage(
                          _currentPage + 1,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Get.off(() => const SignInOne());
                      }
                    },
                    child: Text(
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
