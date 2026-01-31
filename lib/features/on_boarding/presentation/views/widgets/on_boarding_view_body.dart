import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_application/core/widget/custom_button.dart';
import 'package:fruits_application/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_colors.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnBoardingPageView()),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(activeColor: AppColors.primaryColor),
        ),
        const SizedBox(height: 29),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
          child: CustomButton(onPressed: () {}, text: 'ابدأ الان'),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
