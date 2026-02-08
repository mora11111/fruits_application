import 'package:flutter/material.dart';
import 'package:fruits_application/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,

    required this.subtitle,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.isVisible,
  });

  final Widget title;
  final String subtitle, image, backgroundImage;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'تخط',
                    style: TextStyles.regular13.copyWith(
                      color: const Color(0xFF949D9E),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            style: TextStyles.semiBold13.copyWith(
              color: const Color(0xFF4E5456),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
