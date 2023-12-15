import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_project/On_Boarding/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: IntroductionScreen(
          pages: [
            commonPageViewModel(
              "Let's Start Coding",
              "You can start your coding journey with any programming language and framework. Just start learning from everywhere ",
              "image/11b.png",
            ),
            commonPageViewModel(
              "About Flutter",
              "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. ",
              "image/222b.png",
            ),
            commonPageViewModel(
              "Create Your Own Flutter App",
              'After learning flutter you can easily create a Flutter app according to your requirements.',
              "image/33b.png",
            ),
          ],
          dotsDecorator: DotsDecorator(
              size: const Size(10, 10),
              activeColor: Colors.red,
              activeSize: const Size(20, 10),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60))),
          showDoneButton: true,
          done: const Text(
            "Done",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          showNextButton: true,
          next: const Icon(Icons.keyboard_arrow_right_outlined),
          showSkipButton: true,
          skip: const Text(
            "Skip",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          onDone: () => onDone(context),
        ),
      ),
    );
  }

  PageViewModel commonPageViewModel(title, bodyText, image) {
    return PageViewModel(
      title: title,
      body: bodyText,
      image: Image.asset(image),
      decoration: PageDecoration(
          pageColor: Colors.blue[200],
          titleTextStyle:
              const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    );
  }

  void onDone(context) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool("ON_BOARDING", false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
  }
}
// but when we restart a app they again show onbording screen ,
// when we have start app second time we need  directly
//  go to home screen fot that we used the Shared preferences plugin,