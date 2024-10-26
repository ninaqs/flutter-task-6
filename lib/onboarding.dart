import 'package:eshop/ob1.dart';
import 'package:eshop/ob2.dart';
import 'package:eshop/ob3.dart';
import 'package:eshop/welcome.dart';
import 'package:flutter/material.dart';


class PageViewer extends StatefulWidget {
  PageViewer({super.key});

  @override
  State<PageViewer> createState() => _PageViewerState();
}

class _PageViewerState extends State<PageViewer> {
  PageController pageController = PageController();
  double currentPage = 0;

  @override
  void setState(value) {}

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      controller: pageController,
      children: [
        //WelcomePage(),
        //Checkout(),
        //Quality(),
        Prices(),
      ],
    );
  }
}