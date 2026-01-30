import 'package:flutter/material.dart';
import 'package:fruits_application/core/utils/app_images.dart';
import 'package:fruits_application/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
                style: TextStyle(
                  color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'HUB',
                style: TextStyle(
                  color: const Color(0xFF1B5E37) /* Green1-500 */,
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyle(
                  color: const Color(0xFFF4A91F) /* Orange-500 */,
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          image: Assets.imagesPageViewItem1Image,
          backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
        ),
        PageViewItem(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ابحث وتسوق',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF0C0D0D) /* Grayscale-950 */,
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          image: Assets.imagesPageViewItem2Image,
          backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
        ),
      ],
    );
  }
}
