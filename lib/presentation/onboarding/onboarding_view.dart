import 'package:dating_app/core/icons/dating_icons.dart';
import 'package:dating_app/core/theme/palette.dart';
import 'package:dating_app/core/widget/custom_button.dart';
import 'package:dating_app/routes/routes.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: height * 0.0956,
          ),
          Image.asset('assets/img/onboarding_01.png', height: height * 0.37),
          SizedBox(
            height: height * 0.0723,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(color: Palette.blackLight, fontSize: 35),
              children: <TextSpan>[
                const TextSpan(text: 'Find '),
                TextSpan(
                    text: 'Match', style: TextStyle(color: Palette.pinkDark)),
                const TextSpan(text: ' For\n'),
                const TextSpan(text: 'Your Dog'),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.0273,
          ),
          Text(
            'look for and meet another person make an\nappointment for your pet',
            textAlign: TextAlign.center,
            style: TextStyle(color: Palette.grey),
          ),
          SizedBox(
            height: height * 0.0498,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomButtom(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.home);
                },
                text: 'Get Started',
              )),
          SizedBox(
            height: height * 0.0315,
          ),
          Icon(
            Dating.trazado_1326,
            color: Palette.blue,
          )
        ],
      ),
    ));
  }
}
