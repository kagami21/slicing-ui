import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../main.dart';

class IntroductionPage extends StatefulWidget {

  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => IntroductionPageState();
}

class IntroductionPageState extends State<IntroductionPage> {

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MyHomePage()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.white);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.purple,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.purple,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,
      pages: [
        PageViewModel(
          title: "Education",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
          image: _buildImage('book.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Education",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
          image: _buildImage('book.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Education",
          body:
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
          image: _buildImage('book.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Another title page",
          body: "Another beautiful body text for this example onboarding",
          image: _buildImage('book.png'),
          footer: Padding(
          	padding: EdgeInsets.only(left: 20, right: 20),
          	child: ElevatedButton(
	            onPressed: () => _onIntroEnd(context),
	            style: ElevatedButton.styleFrom(
	              backgroundColor: Colors.white,
	              shape: RoundedRectangleBorder(
	                borderRadius: BorderRadius.circular(8.0),
	              ),
	            ),
	            child: const Text(
	              'START',
	              style: TextStyle(fontSize: 25, color: Colors.purple),
	            ),
	          ),
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 6,
            imageFlex: 6,
            safeArea: 80,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      showNextButton: false,
      showBackButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}